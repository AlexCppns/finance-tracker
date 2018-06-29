

var initChartCustom = function(container, data, label, colors, title){
    if(data.length === 0){
        console.warn("Empty data!!");
        return;
    }
    var driftMonths = function(date, months){
        var newDate = new Date(date);
        newDate.setMonth(newDate.getMonth() + months);
        return newDate;
    };

    var range = { min: driftMonths(data[0].x, -1), max: driftMonths(data[data.length - 1].x, 1) };

    new Chart(container, {
        type: 'bar',
        data: {
            datasets: [{
                label: label,
                data: data,

                borderWidth: 1,
                backgroundColor: colors.background,
                borderColor: colors.border
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero:true
                    }
                }],
                xAxes: [{

                    type: 'time',
                    time: {
                        min: range.min,
                        max: range.max,
                        unit: 'month',
                        displayFormats: { month: 'MMM YYYY' }
                    }
                }]

            },
            title: {
                display: true,
                text: title,
                fontSize: 16
            }
        }
    });
};

var initPieCustom = function (container, colors, pieData, pieLabels){
    var total = pieData.reduce(function(a, b){ return a + b}, 0);
     new Chart(container, {
        type: 'pie',
        data: {
            datasets: [{
                data: pieData,
                backgroundColor: colors.backgroundColor,
                borderColor: colors.borderColor,
                label: 'Test'
            }],
            labels: pieLabels
        },
        options: { cutoutPercentage: 50,
            title: {
                display: true,
                text: "total holdings: " + Math.round(total * 100) / 100 + " CAD",
                fontSize: 16
            }
        }});
};
