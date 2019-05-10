class GotProvider
  def call env
    status = 200
    headers = {'Content-Type' => 'application/json'}
    body = [
      {
        personaje: {
          nombre: 'Arya Stark',
          edad: 18,
          casa: 'Stark',
          actor: 'Maisie Williams'
        }
      },
      {
        personaje: {
          nombre: 'Daenerys Targaryen',
          edad: 23,
          casa: 'Targaryen',
          actor: 'Emilia Clarke'
        }
      },
      {
        personaje: {
          nombre: 'Tyrion Lannister',
          edad: 38,
          casa: 'Lannister',
          actor: 'Peter Dinklage'
        }
      }
    ].to_json
    [status, headers, body]
  end
end
