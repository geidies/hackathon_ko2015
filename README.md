Prerequisites
=============

    bundle install
    bundle exec ruby app.rb


Endpoints
=========

First, call ```/texts?url=<INSERT URL HERE>``` 
----------------------------------------------
parameter required: url, otherwise: garbage.

you'll get back a json array of the paragraphs on the web page, like this:

   nostromo:hackathon sgeidies$ curl localhost:4567/texts?url=http://www.americanapparel.net/aboutus/
   ["About Us","Like","692","Our Garment Workers Are Paid Up To 50 Times More Than The Competition","A garment worker in Bangladesh earns an average of $600 a year. An experienced American Apparel garment worker can earn $30,000+ and receive beneﬁts such as comprehensive health care. American Apparel garments are created by motivated and fairly-paid employees who don't just have jobs - they have careers. Our culture recognizes outstanding performance and promotes from within. Most importantly, our workers have a voice and inﬂuence the direction of the company. At American Apparel we call it Sweatshop-Free, a term we coined in 2002.","Unlike Our Competitors, We Make Our Own Product","The American Apparel factory is the largest sewing facility in North America. We believe that integrating our manufacturing, distribution and creative processes keeps our company more efﬁcient than those who rely on offshore or onshore sub-contracting. By leveraging art, design, and technology at our Downtown LA campus, we are able to pay garment workers fairly AND sell garments proﬁtably so we can sustain our business and grow. Everyone beneﬁts - customers, workers, and shareholders alike.","The New Standard That Others Will Follow","There is clearly much more overhead, capital investment and training involved in manufacturing in the USA, as some critics point out. But at American Apparel we passionately leverage art, design and technology to advance our business process and we are conﬁdent we'll prove that vertical integration is a viable business model that can work even better than the status quo model of continuous outsourcing. It’s not just about made in the USA. More importantly, it is about designing a business that does not, at its fundamental core, rely on the relentless pursuit of low cost labor to survive. As wages and transportation costs increase worldwide, we believe our business model of vertical integration to be the path of least resistance. For the record, American Apparel supports free and fair trade, and almost half of the company's 250 stores are outside the USA, allowing the company to export hundreds of millions of dollars of US-made apparel annually.","Environmental Commitment","American Apparel is also committed to sustainability. We've set the precedent for sustainable and ethical manufacturing in California—the state with the strictest and most progressive EPA standards in the country. By concentrating our entire operation within a few square miles, American Apparel has a smaller carbon footprint than our competitors. We recycle almost all our manufacturing waste—an average of 125,000 lbs of textile and 25,000 lbs of paper, plastic and cardboard per week (over 260 semi truck loads per year). As of 2014, we are virtually landﬁll-free. Our solar panels offset as much as 20% of our electrical usage, and we ship the majority of our goods to our worldwide stores via excess space on passenger ﬂights and busses, minimizing our environmental impact.","Investing In The Future","Manufacturing in America requires risk taking and long-term investment. We think it's well worth it. The apparel industry's reliance on low wages cannot be sustained over time, ethically or ﬁscally. As labor and transportation costs increase worldwide, exploitation will not only be morally offensive, it will not even be ﬁnancially viable. For us, American manufacturing is not a trend - we've been doing it since the day our company began in Los Angeles ﬁfteen years ago. We are extremely proud of our model, which provides thousands of good jobs both domestically and internationally. American Apparel's current head count is 6,000 in Los Angeles, with an additional 5,000 working at our stores worldwide.","The employees of American Apparel thank you for your support."]


Then, call ```/keywords/?text=<INSERT TEXT HERE>```
---------------------------------------------------

you'll get back a json array of extracted keywords.
