-- Categorias: 1 = Livros, 2 = Eletrônicos, 3 = Computadores
INSERT INTO categories (name) VALUES ('Livros');
INSERT INTO categories (name) VALUES ('Eletrônicos');
INSERT INTO categories (name) VALUES ('Computadores');

-- Produtos: preços ilustrativos em reais e imagens do catálogo de exemplo.
INSERT INTO products (name, price, description, img_url) VALUES ('O Senhor dos Anéis: A Sociedade do Anel', 89.90, 'Primeiro volume da trilogia de J. R. R. Tolkien. Acompanhe Frodo e a Sociedade do Anel em uma jornada pela Terra-média para destruir o Um Anel. Edição em português.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/1-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('Smart TV LED 50 polegadas 4K', 2499.90, 'Televisor com resolução 4K Ultra HD, HDR e conexão Wi-Fi. Acesse aplicativos de streaming e conecte consoles, notebooks e outros dispositivos pelas entradas HDMI e USB.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/2-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('MacBook Pro 14 polegadas M3', 12999.90, 'Notebook Apple com chip M3, 16 GB de memória unificada e SSD de 512 GB. Tela Liquid Retina XDR de 14 polegadas, indicado para programação, edição de fotos e produção de conteúdo.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/3-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('PC Gamer Ryzen 5 5600 RTX 4060', 4999.90, 'Desktop com processador AMD Ryzen 5 5600, placa de vídeo GeForce RTX 4060 de 8 GB, 16 GB de RAM DDR4 e SSD NVMe de 1 TB. Configuração voltada a jogos em Full HD. Monitor e periféricos não inclusos.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/4-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('Ruby on Rails For Dummies', 159.90, 'Guia introdutório de Barry Burd para desenvolvimento web com Ruby on Rails. Apresenta os fundamentos do framework, organização de aplicações e integração com banco de dados. Edição em inglês.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/5-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('PC Gamer Core i5-12400F RTX 4060', 5199.90, 'Desktop com Intel Core i5-12400F, GeForce RTX 4060 de 8 GB, 16 GB de RAM DDR4 e SSD NVMe de 1 TB. Ideal para jogos em Full HD e uso diário. Monitor e periféricos não inclusos.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/6-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('PC Gamer Ryzen 7 5700X RTX 4060 Ti', 6499.90, 'Computador com Ryzen 7 5700X de oito núcleos, GeForce RTX 4060 Ti de 8 GB, 32 GB de RAM DDR4 e SSD NVMe de 1 TB. Indicado para jogos e edição de vídeo. Monitor e periféricos não inclusos.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/7-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('PC Gamer Core i5-13400F RTX 4070', 7999.90, 'Desktop com Intel Core i5-13400F, GeForce RTX 4070 de 12 GB, 32 GB de RAM DDR4 e SSD NVMe de 1 TB. Uma opção para jogos em resolução Quad HD. Monitor e periféricos não inclusos.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/8-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('PC Gamer Ryzen 7 7800X3D RTX 4070 Super', 10999.90, 'Computador com Ryzen 7 7800X3D, GeForce RTX 4070 Super de 12 GB, 32 GB de RAM DDR5 e SSD NVMe de 2 TB. Configuração de alto desempenho para jogos exigentes. Monitor e periféricos não inclusos.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/9-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('PC Gamer Ryzen 5 5500 Radeon RX 6600', 3499.90, 'Desktop com Ryzen 5 5500, Radeon RX 6600 de 8 GB, 16 GB de RAM DDR4 e SSD de 512 GB. Configuração de entrada para jogos em Full HD. Monitor e periféricos não inclusos.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/10-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('PC Gamer Core i3-12100F GTX 1650', 2799.90, 'Computador com Intel Core i3-12100F, GeForce GTX 1650 de 4 GB, 16 GB de RAM DDR4 e SSD de 480 GB. Indicado para jogos leves e competitivos. Monitor e periféricos não inclusos.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/11-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('PC Gamer Ryzen 5 5600 Radeon RX 7600', 4299.90, 'Desktop com Ryzen 5 5600, Radeon RX 7600 de 8 GB, 16 GB de RAM DDR4 e SSD NVMe de 1 TB. Boa opção para jogos em Full HD e multitarefa. Monitor e periféricos não inclusos.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/12-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('PC Desktop Ryzen 5 5600G 16 GB', 2299.90, 'Computador com Ryzen 5 5600G e gráficos Radeon integrados, 16 GB de RAM DDR4 e SSD de 512 GB. Indicado para estudos, escritório e jogos leves. Monitor e periféricos não inclusos.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/13-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('PC Gamer Core i7-13700F RTX 4070 Super', 9999.90, 'Desktop com Intel Core i7-13700F, GeForce RTX 4070 Super de 12 GB, 32 GB de RAM DDR5 e SSD NVMe de 2 TB. Indicado para jogos, streaming e criação de conteúdo. Monitor e periféricos não inclusos.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/14-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('PC Gamer Ryzen 7 7700 Radeon RX 7800 XT', 8499.90, 'Computador com Ryzen 7 7700, Radeon RX 7800 XT de 16 GB, 32 GB de RAM DDR5 e SSD NVMe de 1 TB. Configuração para jogos em Quad HD. Monitor e periféricos não inclusos.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/15-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('PC Gamer Ryzen 9 7900 RTX 4080 Super', 15999.90, 'Desktop com Ryzen 9 7900 de doze núcleos, GeForce RTX 4080 Super de 16 GB, 64 GB de RAM DDR5 e SSD NVMe de 2 TB. Voltado a jogos em 4K e tarefas profissionais. Monitor e periféricos não inclusos.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/16-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('PC Desktop Core i5-12400 16 GB', 2699.90, 'Computador com Intel Core i5-12400, gráficos Intel UHD integrados, 16 GB de RAM DDR4 e SSD NVMe de 512 GB. Indicado para escritório, aulas online e programação. Monitor e periféricos não inclusos.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/17-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('PC Gamer Ryzen 5 5600 RTX 3060', 4199.90, 'Desktop com Ryzen 5 5600, GeForce RTX 3060 de 12 GB, 16 GB de RAM DDR4 e SSD NVMe de 1 TB. Indicado para jogos em Full HD e edição de imagens. Monitor e periféricos não inclusos.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/18-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('PC Gamer Core i5-14400F RTX 4060 Ti', 6799.90, 'Computador com Intel Core i5-14400F, GeForce RTX 4060 Ti de 8 GB, 32 GB de RAM DDR5 e SSD NVMe de 1 TB. Configuração para jogos e multitarefa. Monitor e periféricos não inclusos.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/19-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('PC Gamer Ryzen 5 7600 RTX 4060', 5799.90, 'Desktop com Ryzen 5 7600, GeForce RTX 4060 de 8 GB, 16 GB de RAM DDR5 e SSD NVMe de 1 TB. Plataforma AM5 com possibilidade de futuras atualizações. Monitor e periféricos não inclusos.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/20-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('PC Gamer Ryzen 5 7600 Radeon RX 7700 XT', 6699.90, 'Computador com Ryzen 5 7600, Radeon RX 7700 XT de 12 GB, 32 GB de RAM DDR5 e SSD NVMe de 1 TB. Indicado para jogos em Full HD e Quad HD. Monitor e periféricos não inclusos.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/21-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('PC Gamer Core i7-12700F RTX 4060 Ti', 7299.90, 'Desktop com Intel Core i7-12700F, GeForce RTX 4060 Ti de 8 GB, 32 GB de RAM DDR4 e SSD NVMe de 1 TB. Indicado para jogos e trabalho com várias aplicações. Monitor e periféricos não inclusos.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/22-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('PC Gamer Ryzen 7 5700X3D RTX 4070', 7799.90, 'Computador com Ryzen 7 5700X3D, GeForce RTX 4070 de 12 GB, 32 GB de RAM DDR4 e SSD NVMe de 1 TB. Processador com cache 3D voltado ao desempenho em jogos. Monitor e periféricos não inclusos.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/23-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('PC Gamer Core i7-14700F RTX 4070 Ti Super', 12999.90, 'Desktop com Intel Core i7-14700F, GeForce RTX 4070 Ti Super de 16 GB, 32 GB de RAM DDR5 e SSD NVMe de 2 TB. Indicado para jogos exigentes e edição de vídeo. Monitor e periféricos não inclusos.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/24-big.jpg');
INSERT INTO products (name, price, description, img_url) VALUES ('PC Gamer Ryzen 9 7950X RTX 4090', 24999.90, 'Computador com Ryzen 9 7950X de dezesseis núcleos, GeForce RTX 4090 de 24 GB, 64 GB de RAM DDR5 e SSD NVMe de 2 TB. Voltado a renderização 3D e jogos em 4K. Monitor e periféricos não inclusos.', 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/25-big.jpg');

-- Associação dos produtos às categorias.
INSERT INTO product_category (product_id, category_id) VALUES (1, 1);
INSERT INTO product_category (product_id, category_id) VALUES (2, 2);
INSERT INTO product_category (product_id, category_id) VALUES (3, 3);
INSERT INTO product_category (product_id, category_id) VALUES (4, 3);
INSERT INTO product_category (product_id, category_id) VALUES (5, 1);
INSERT INTO product_category (product_id, category_id) VALUES (6, 3);
INSERT INTO product_category (product_id, category_id) VALUES (7, 3);
INSERT INTO product_category (product_id, category_id) VALUES (8, 3);
INSERT INTO product_category (product_id, category_id) VALUES (9, 3);
INSERT INTO product_category (product_id, category_id) VALUES (10, 3);
INSERT INTO product_category (product_id, category_id) VALUES (11, 3);
INSERT INTO product_category (product_id, category_id) VALUES (12, 3);
INSERT INTO product_category (product_id, category_id) VALUES (13, 3);
INSERT INTO product_category (product_id, category_id) VALUES (14, 3);
INSERT INTO product_category (product_id, category_id) VALUES (15, 3);
INSERT INTO product_category (product_id, category_id) VALUES (16, 3);
INSERT INTO product_category (product_id, category_id) VALUES (17, 3);
INSERT INTO product_category (product_id, category_id) VALUES (18, 3);
INSERT INTO product_category (product_id, category_id) VALUES (19, 3);
INSERT INTO product_category (product_id, category_id) VALUES (20, 3);
INSERT INTO product_category (product_id, category_id) VALUES (21, 3);
INSERT INTO product_category (product_id, category_id) VALUES (22, 3);
INSERT INTO product_category (product_id, category_id) VALUES (23, 3);
INSERT INTO product_category (product_id, category_id) VALUES (24, 3);
INSERT INTO product_category (product_id, category_id) VALUES (25, 3);

INSERT INTO users (name, email, phone, password, birth_date) VALUES ('Isaac', 'isaac@gmail.com', '988888888', '123456', '2001-07-25');
INSERT INTO users (name, email, phone, password, birth_date) VALUES ('Alex', 'alex@gmail.com', '977777777', '123456', '1987-12-13');

-- Status persistido como texto; datas em UTC nas colunas sem fuso horário.
INSERT INTO orders (moment, status, client_id) VALUES (TIMESTAMP '2026-10-05 13:00:00', 'PAID', 1);
INSERT INTO orders (moment, status, client_id) VALUES (TIMESTAMP '2026-10-01 15:50:00', 'DELIVERED', 2);
INSERT INTO orders (moment, status, client_id) VALUES (TIMESTAMP '2026-10-08 14:20:00', 'WAITING_PAYMENT', 1);

INSERT INTO order_item (order_id, product_id, quantity, price) VALUES (1, 1, 2, 89.90);
INSERT INTO order_item (order_id, product_id, quantity, price) VALUES (1, 3, 1, 12999.90);
INSERT INTO order_item (order_id, product_id, quantity, price) VALUES (2, 3, 1, 12999.90);
INSERT INTO order_item (order_id, product_id, quantity, price) VALUES (3, 1, 1, 89.90);

INSERT INTO payments (order_id, moment) VALUES (1, TIMESTAMP '2026-10-05 15:00:00');
INSERT INTO payments (order_id, moment) VALUES (2, TIMESTAMP '2026-10-02 11:00:00');
