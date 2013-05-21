%clear all;

example = 'vapnik';


switch(example)
    case{'vapnik'}
        plq = 'vapnik';
        
        params.eps = 0.5;
        params.lambda = 1;
        params.silent = 1;
        
        plotPenalty(plq, params);
        
    case{'huber'}
        plq = 'huber';
        
        params.kappa = 0.01;
        plotPenalty(plq, params);
        
    case{'hybrid'}
        plq = 'hybrid';
        params.scale = 5;
        params.silent = 1;
        
        plotPenalty(plq, params);
        
    otherwise
        error('unknown example');
end