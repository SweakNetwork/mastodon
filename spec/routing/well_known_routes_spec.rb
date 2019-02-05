require 'rails_helper'

describe 'the host-meta route' do
  it 'routes to correct place with xml format' do
    expect(get('/.well-known/host-meta')).
      to route_to('well_known/host_meta#show', format: 'xml')
  end
end

describe 'the host-meta.json route' do
  it 'routes to correct place with json format' do
    expect(get('/.well-known/host-meta.json')).
      to route_to('well_known/host_meta#show_json', format: 'json')
  end
end

describe 'the webfinger route' do
  it 'routes to correct place with json format' do
    expect(get('/.well-known/webfinger')).
      to route_to('well_known/webfinger#show')
  end
end
