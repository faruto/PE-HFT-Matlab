% Position Up Capture Ratio
%
% 
% Computes daily up capture ratio of a position.
% 
% Usage
% 
% position_upCaptureRatio(portfolio,symbol)
% 
%
% portfolio
%        Portfolio object created using portfolio_create( ) function
%
% symbol
%        unique identifier of the instrument
%
% Return Value
% 
% Numeric vector of position up capture ratio values.
%
% Description
% https://www.portfolioeffect.com/docs/glossary/measures/relative-return-measures/up-capture-ratio
% 
% Note
%
% PortfolioEffect - Matlab Interface to Quant API
% 
% Copyright (C) 2010 - 2015 Snowfall Systems, Inc.
%
%
% Examples
% 
% data_goog=importdata('data_goog.mat'); 
% data_aapl=importdata('data_aapl.mat');  
% data_spy=importdata('data_spy.mat'); 
% portfolioExample=portfolio_create('priceDataIx',data_spy); 
% portfolio_addPosition(portfolioExample,'GOOG',100,'priceData',data_goog);
% portfolio_addPosition(portfolioExample,'AAPL',300,'priceData',data_aapl);
% portfolio_addPosition(portfolioExample,'SPY',150,'priceData',data_spy);
% portfolio_settings(portfolioExample,'portfolioMetricsMode','price','windowLength','3600s');
% util_plot2d(position_upCaptureRatio(portfolioExample,'GOOG'),'Position Up Capture Ratio GOOG')
% 
% dateStart = '2014-11-17 09:30:00';
% dateEnd = '2014-11-19 16:00:00';
% portfolioExample=portfolio_create('index','SPY','fromTime',dateStart ,'toTime',dateEnd );
% portfolio_addPosition(portfolioExample,'AAPL',100);
% portfolio_addPosition(portfolioExample,'C',300); 
% portfolio_addPosition(portfolioExample,'GOOG',150);
% util_plot2d(position_upCaptureRatio(portfolioExample,'AAPL'),'Position Up Capture Ratio AAPL')
function [position_upCaptureRatio] = position_upCaptureRatio(portfolio,symbol)
     position_upCaptureRatio=position_metric(portfolio,'metric','POSITION_UP_CAPTURE_RATIO','position',symbol);
end
