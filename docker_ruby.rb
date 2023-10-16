class Docker 
=begin
A simple class in ruby to get all the docker sizes present on the containers
Docker.new.docker to use this call to list the sizes
Docker.new.docker_name to use this call to list the names
=end
  def docker_size
  docker_size = Array.new()
  for i in `docker image ls`.split("\n") do
    docker_size.append(i.split)
  end
   return docker_size.each {| each | puts each[-1]}
end
  def docker_name
  docker_size = Array.new()
  for i in `docker image ls`.split("\n") do
    docker_size.append(i.split)
  end
   return docker_size.each {| each | puts each[0]}
end
  def latency_check(ip_address)
    return `ping 127.0.0.1 > time.log && cat time.log | cut -f 7 -d " " | cut -f 2 -d "=" | uplot bar -d, -t "time latency"`
  end
end
