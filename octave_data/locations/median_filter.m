function out = median_filter(in, n) 
  in = in(:);
  out = zeros(size(in));
  
  for i = 1:length(in)
    out(i) = median(in(max(1,i-n):min(i+n,end)));
  end
end 