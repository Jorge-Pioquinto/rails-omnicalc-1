Rails.application.routes.draw do
  get("/", {:controller =>"input", :action => "square"})

  get("/square/new", {:controller =>"input", :action => "square"})

  get("/square_root/new", {:controller =>"input", :action => "square_root"})

  get("/payment/new", {:controller =>"input", :action => "payment"})

  get("/random/new", {:controller =>"input", :action => "random"})
  
  get("/square/results", {:controller =>"calculator", :action => "square"})

  get("/square_root/results", {:controller =>"calculator", :action => "square_root"})

  get("/payment/results", {:controller =>"calculator", :action => "payment"})

  get("random/results", {:controller =>"calculator", :action => "random"})
end
