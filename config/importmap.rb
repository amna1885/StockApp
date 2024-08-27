# Pin npm packages by running ./bin/importmap

pin "application"
pin "popper", to: 'popper.js', preload: true
pin "bootstrap", to: "https://unpkg.com/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js", preload: true
pin "jquery", to: "https://code.jquery.com/jquery-3.6.0.min.js", preload: true

