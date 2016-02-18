# portfolio-equal-allocation

Suppose that we have merged our data using the DataMerge() as discussed in yahoo-data-mgmt
where the downloaded data are daily prices. Then in order to use the portfolio
selection functions, based upon convention, we will need to convert the data from
daily into monthly returns (algorithm not included in this paper). Or, to avoid
doing that, we can download monthly data at the beginning and run DataMerge()
directly on monthly data. Once the data frame is merged and set up, we can run
the portfolio functions which will give us with the optimal weights of each stock
to be allocated, as well as the expected return and risk of this portfolio based
upon historical data supplied into the function. For example, in our paper, we
type the following:

port.eq(data=ret.mon)

where ret.mon is the name of my data frame or matrix with monthly returns of
each stock in each column.
