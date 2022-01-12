import mysql.connector
import scrapy
import  json
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="Scrap"
)

mycursor = mydb.cursor()

print((mydb))

url = 'https://www.kayak.co.in/Mumbai-Hotels.31288.hotel.ksp'
x = url.split("/")[-1]
y = x.split("Hotels")[0][: len(x.split('Hotels')[0])-1]
print(y)



class QuotesSpider(scrapy.Spider):
    name = "quotes"
    start_urls = [
        url
    ]

    def parse(self, response):
       
       
        data = response.css('div.c44F-item')
        images = []
        names = []
        locations = []
        rattings = []
        prices = []
        sub_portion = []
        web_scripts = []
        for script in response.css('html head script'):
            web_scripts.append(script.css('script::text').get())
        for i in range(0, len(data), 1):
            value = data[i].css(
                'div.soom .soom-photo-wrapper .soom-photo::attr(src)').get()
            name = data[i].css(
                    'div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-name span::text').get()
            if(value != None):
                image = data[i].css(
                    'div.soom .soom-photo-wrapper .soom-photo::attr(src)').get()
            else:

                for j in range(3, len(web_scripts), 1):

                    x = json.loads(web_scripts[j])
                    
                    if(name == x.get('name') and x.get('@type') == 'Hotel'):

                        image= x.get('image')

            images.append(image)
            print(image)
            value1 = data[i].css(
                'div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-name span::text').get()
            if(value1 != None):
                name = data[i].css(
                    'div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-name span::text').get()
            else:
                name = "N/A"
            names.append(name)
            print(name)
            value2 = data[i].css(
                'div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-rating-wrapper span::text').get()
            if(value2 != None):
                ratting = data[i].css(
                    'div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-rating-wrapper span::text').get()
            else:
                ratting = "N/A"
            rattings.append(ratting)
            print(ratting)
            value3 = data[i].css(
                'div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-price-section .soom-neighborhood::text').get()
            if(value3 != None):
                loc = data[i].css(
                    'div.soom .soom-content-wrapper .soom-description-wrapper .soom-description .soom-price-section .soom-neighborhood::text').get()
                location = y + ","+loc
            else:
                location = y
            locations.append(location)
            print(location)
            value4 = data[i].css(
                'div.soom .soom-content-wrapper .soom-description-wrapper .soom-price::text').get()
            if(value4 != None):
                price = data[i].css(
                    'div.soom .soom-content-wrapper .soom-description-wrapper .soom-price::text').get()
            else:
                price = "N/A"
            prices.append(price)
            print(price)

            list_lower = data[i].css(
                'div.soom .soom-content-wrapper .soom-freebies-section .soom-freebies .soom-freebie')
            sub_list = []
            for j in range(0, len(list_lower), 1):
                sub_list.append(list_lower[j].css('span::text').get())
            sub_portion.append(sub_list)
            print()
        for i in range(0, len(data), 1):
            print(images[i])
            print(locations[i])
            print(names[i])
            print(rattings[i])
            print(prices[i])
            print(sub_portion[i])
            Amenities = listToStr = ' '.join(
                map(str, sub_portion[i]))
            print(Amenities)
            web_data_to_Database(names[i], locations[i],
                           rattings[i], prices[i], Amenities, images[i])


def web_data_to_Database(name, location, ratting, prices, Amenities, images):
    # check Data Duplicate data in database 
    sql = "SELECT * FROM data_from_web WHERE name = %(value1)s AND location = %(value2)s"
    params = {'value1':name, 'value2':location}
    mycursor.execute(sql, params)
    myresult = mycursor.fetchall()
    if(len(myresult) == 0):
        sql = "INSERT INTO data_from_web(name,location,ratting,prices,Amenities,images) VALUES ( %s, %s, %s, %s, %s, %s)"
        val = (name, location, ratting, prices, Amenities, images)
        mycursor.execute(sql, val)
        mydb.commit()
        print(mycursor.rowcount, "record inserted.")
    else:
        print("Data already exists")    