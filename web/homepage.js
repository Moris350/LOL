
// const openPrice = document.getElementById("open");
// const highPrice = document.getElementById("high");
// const lowPrice = document.getElementById("low");
// const closePrice = document.getElementById("close");
// const volume = document.getElementById("volume");

// fetch('https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=IBM&interval=5min&apikey=OJXXDM84RTLNTIQP')
//     .then(response => response.json())
//     .then(data => {
//         openPrice.innerText = data.open;
//         highPrice.innerText = data.high;
//         lowPrice.innerText = data.low;
//         closePrice.innerText = data.close;
//         volume.innerText = data.volume;
//     });

const options = {
	method: 'GET',
	headers: {
		'X-RapidAPI-Key': 'ca0640f6d1msh6b5a34a7fc37743p1278cejsn0c62a418849c',
		'X-RapidAPI-Host': 'twelve-data1.p.rapidapi.com'
	}
};
var response;

fetch('https://twelve-data1.p.rapidapi.com/stocks?exchange=NASDAQ&format=json', options)
	.then(response => response.json())
	.then(response => console.log(response))
	.catch(err => console.error(err));


search.addEventListener("input", function (e) {
    var search_content = this.value;
    const result = response.filter(d=>d[search_content]==value);
    console.log(result);

});


const options2 = {
	method: 'GET',
	headers: {
		'X-RapidAPI-Key': '67fe20f7553340798f5c75ab8f42d854',
		'X-RapidAPI-Host': 'twelve-data1.p.rapidapi.com'
	}
};

fetch('https://twelve-data1.p.rapidapi.com/market_movers/stocks', options)
	.then(response => response.json())
	.then(response => console.log(response))
	.catch(err => console.error(err));
	const options3 = {
		method: 'GET',
		headers: {
			'X-RapidAPI-Key': '67fe20f7553340798f5c75ab8f42d854',
			'X-RapidAPI-Host': 'twelve-data1.p.rapidapi.com'
		}
	};
	
fetch('https://twelve-data1.p.rapidapi.com/earliest_timestamp?symbol=AAPL&interval=1day&outputsize=30', options)
	.then(response => response.json())
	.then(response => console.log(response))
	.catch(err => console.error(err));

	const options4 = {
		method: 'GET',
		headers: {
			'X-RapidAPI-Key': '67fe20f7553340798f5c75ab8f42d854',
			'X-RapidAPI-Host': 'twelve-data1.p.rapidapi.com'
		}
	};
	
	fetch('https://twelve-data1.p.rapidapi.com/time_series?symbol=AMZN&interval=1day&outputsize=30&format=json', options)
		.then(response => response.json())
		.then(response => console.log(response))
		.catch(err => console.error(err));


		

anychart.onDocumentReady(function () {
			// this column represents JS equivalents every JSON object
var chart = anychart.fromJson(
{chart:{type: "line",                  // var chart = anychart.line();

// set interval of default y scale
yScale: {ticks: {interval: 100000}}, // chart.yScale().ticks().interval(100000);

// settings for custom y scale
scales: [ {}, {},
{                                  // var newYScale = anychart.scales.linear();
type: "linear",                    // newYScale
minimum: 0,                        //   .minimum(0)
maximum: 100,                      //   .maximum(100)
ticks: {                           //   .ticks()
interval: 10},                   //     .interval(10);
minorTicks: {                      // newYScale.minorTicks()
interval: 2} }],                 //   .interval(2);

// y axes settings
yAxes: [{title: "Basic Y Axis"       // chart.yAxis().title().text("Basic Y Axis");
},{                                // chart.yAxis(1)
orientation: "right",              //   .orientation("right")
scale: 2,                          //   .scale(customYScale)
title:{                            //   .title()
text: "Extra Y Axis"},           //   .text("Extra Y Axis");
minorTicks: {                    //   .minorTicks()
enabled: true} }],             //     .enabled(true);

series:[{seriesType: "column",       // chart.column([
data: [{x: "A", value: 637166},    //   ["A", 637166],
{x: "B", value: 721630},         //   ["B", 721630],
{x: "C", value: 148662},         //   ["C", 148662],
{x: "D", value: 78662},          //   ["D", 78662],
{x: "E", value: 90000}           //   ["E", 90000]
]},{                               // ]);
seriesType: "line",                // chart.line([
data:[{x: "A", value: 95},         //   ["A", 95],
{x: "B", value: 97},             //   ["B", 97],
{x: "C", value: 96},             //   ["C", 96],
{x: "D", value: 70},             //   ["D", 70],
{x: "E", value: 35}],            //   ["E", 35]
yScale: 2}],                       // ]).yScale(newYScale);

container: "container"}}             // chart.container("container")
).draw();        
});
		