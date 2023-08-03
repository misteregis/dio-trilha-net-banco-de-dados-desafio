CREATE DATABASE [movies]
GO
USE [movies]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[actors](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](20) NULL,
	[last_name] [varchar](20) NULL,
	[gender] [varchar](1) NULL,
 CONSTRAINT [PK_actor] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie_cast](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[actor_id] [int] NOT NULL,
	[movie_id] [int] NULL,
	[role] [varchar](30) NULL,
 CONSTRAINT [PK_movie_cast] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[year] [int] NULL,
	[duration] [int] NULL,
 CONSTRAINT [PK_movie] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genre_movies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[gender_id] [int] NULL,
	[movie_id] [int] NULL,
 CONSTRAINT [PK_genre_movies] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genres](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[gender] [varchar](20) NULL,
 CONSTRAINT [PK_genres] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[actors] ON
GO
INSERT [dbo].[actors] ([id], [first_name], [last_name], [gender]) VALUES (1, N'James', N'Stewart', N'M')
GO
INSERT [dbo].[actors] ([id], [first_name], [last_name], [gender]) VALUES (2, N'Deborah', N'Kerr', N'F')
GO
INSERT [dbo].[actors] ([id], [first_name], [last_name], [gender]) VALUES (3, N'Peter', N'OToole', N'M')
GO
INSERT [dbo].[actors] ([id], [first_name], [last_name], [gender]) VALUES (4, N'Robert', N'DeNiro', N'M')
GO
INSERT [dbo].[actors] ([id], [first_name], [last_name], [gender]) VALUES (6, N'Harrison', N'Ford', N'M')
GO
INSERT [dbo].[actors] ([id], [first_name], [last_name], [gender]) VALUES (7, N'Stephen', N'Baldwin', N'M')
GO
INSERT [dbo].[actors] ([id], [first_name], [last_name], [gender]) VALUES (8, N'Jack', N'Nicholson', N'M')
GO
INSERT [dbo].[actors] ([id], [first_name], [last_name], [gender]) VALUES (9, N'Mark', N'Wahlberg', N'M')
GO
INSERT [dbo].[actors] ([id], [first_name], [last_name], [gender]) VALUES (10, N'Woody', N'Allen', N'M')
GO
INSERT [dbo].[actors] ([id], [first_name], [last_name], [gender]) VALUES (11, N'Claire', N'Danes', N'F')
GO
INSERT [dbo].[actors] ([id], [first_name], [last_name], [gender]) VALUES (12, N'Tim', N'Robbins', N'M')
GO
INSERT [dbo].[actors] ([id], [first_name], [last_name], [gender]) VALUES (13, N'Kevin', N'Spacey', N'M')
GO
INSERT [dbo].[actors] ([id], [first_name], [last_name], [gender]) VALUES (14, N'Kate', N'Winslet', N'F')
GO
INSERT [dbo].[actors] ([id], [first_name], [last_name], [gender]) VALUES (15, N'Robin', N'Williams', N'M')
GO
INSERT [dbo].[actors] ([id], [first_name], [last_name], [gender]) VALUES (16, N'Jon', N'Voight', N'M')
GO
INSERT [dbo].[actors] ([id], [first_name], [last_name], [gender]) VALUES (17, N'Ewan', N'McGregor', N'M')
GO
INSERT [dbo].[actors] ([id], [first_name], [last_name], [gender]) VALUES (18, N'Christian', N'Bale', N'M')
GO
INSERT [dbo].[actors] ([id], [first_name], [last_name], [gender]) VALUES (19, N'Maggie', N'Gyllenhaal', N'F')
GO
INSERT [dbo].[actors] ([id], [first_name], [last_name], [gender]) VALUES (20, N'Dev', N'Patel', N'M')
GO
INSERT [dbo].[actors] ([id], [first_name], [last_name], [gender]) VALUES (21, N'Sigourney', N'Weaver', N'F')
GO
INSERT [dbo].[actors] ([id], [first_name], [last_name], [gender]) VALUES (22, N'David', N'Aston', N'M')
GO
INSERT [dbo].[actors] ([id], [first_name], [last_name], [gender]) VALUES (23, N'Ali', N'Astin', N'F')
GO
SET IDENTITY_INSERT [dbo].[actors] OFF
GO
SET IDENTITY_INSERT [dbo].[movie_cast] ON
GO
INSERT [dbo].[movie_cast] ([id], [actor_id], [movie_id], [role]) VALUES (1, 1, 1, N'John Scottie Ferguson')
GO
INSERT [dbo].[movie_cast] ([id], [actor_id], [movie_id], [role]) VALUES (2, 2, 2, N'Miss Giddens')
GO
INSERT [dbo].[movie_cast] ([id], [actor_id], [movie_id], [role]) VALUES (3, 3, 3, N'T.E. Lawrence')
GO
INSERT [dbo].[movie_cast] ([id], [actor_id], [movie_id], [role]) VALUES (4, 4, 4, N'Michael')
GO
INSERT [dbo].[movie_cast] ([id], [actor_id], [movie_id], [role]) VALUES (5, 6, 6, N'Rick Deckard')
GO
INSERT [dbo].[movie_cast] ([id], [actor_id], [movie_id], [role]) VALUES (6, 7, 8, N'McManus')
GO
INSERT [dbo].[movie_cast] ([id], [actor_id], [movie_id], [role]) VALUES (7, 9, 10, N'Eddie Adams')
GO
INSERT [dbo].[movie_cast] ([id], [actor_id], [movie_id], [role]) VALUES (8, 10, 11, N'Alvy Singer')
GO
INSERT [dbo].[movie_cast] ([id], [actor_id], [movie_id], [role]) VALUES (9, 11, 12, N'San')
GO
INSERT [dbo].[movie_cast] ([id], [actor_id], [movie_id], [role]) VALUES (10, 12, 13, N'Andy Dufresne')
GO
INSERT [dbo].[movie_cast] ([id], [actor_id], [movie_id], [role]) VALUES (11, 13, 14, N'Lester Burnham')
GO
INSERT [dbo].[movie_cast] ([id], [actor_id], [movie_id], [role]) VALUES (12, 14, 15, N'Rose DeWitt Bukater')
GO
INSERT [dbo].[movie_cast] ([id], [actor_id], [movie_id], [role]) VALUES (13, 15, 16, N'Sean Maguire')
GO
INSERT [dbo].[movie_cast] ([id], [actor_id], [movie_id], [role]) VALUES (14, 16, 17, N'Ed')
GO
INSERT [dbo].[movie_cast] ([id], [actor_id], [movie_id], [role]) VALUES (15, 17, 18, N'Renton')
GO
INSERT [dbo].[movie_cast] ([id], [actor_id], [movie_id], [role]) VALUES (16, 19, 20, N'Elizabeth Darko')
GO
INSERT [dbo].[movie_cast] ([id], [actor_id], [movie_id], [role]) VALUES (17, 20, 21, N'Older Jamal')
GO
INSERT [dbo].[movie_cast] ([id], [actor_id], [movie_id], [role]) VALUES (18, 21, 22, N'Ripley')
GO
INSERT [dbo].[movie_cast] ([id], [actor_id], [movie_id], [role]) VALUES (19, 13, 23, N'Bobby Darin')
GO
INSERT [dbo].[movie_cast] ([id], [actor_id], [movie_id], [role]) VALUES (20, 8, 9, N'J.J. Gittes')
GO
INSERT [dbo].[movie_cast] ([id], [actor_id], [movie_id], [role]) VALUES (21, 18, 19, N'Alfred Borden')
GO
SET IDENTITY_INSERT [dbo].[movie_cast] OFF
GO
SET IDENTITY_INSERT [dbo].[movies] ON
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (1, N'Um Corpo que Cai', 1958, 128)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (2, N'Os Inocentes', 1961, 100)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (3, N'Lawrence da Arábia', 1962, 216)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (4, N'O Franco Atirador', 1978, 183)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (5, N'Amadeus', 1984, 160)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (6, N'Blade Runner', 1982, 117)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (7, N'De Olhos Bem Fechados', 1999, 159)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (8, N'Os Suspeitos', 1995, 106)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (9, N'Chinatown', 1974, 130)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (10, N'Boogie Nights - Prazer Sem Limites', 1997, 155)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (11, N'Noivo Neurótico, Noiva Nervosa', 1977, 93)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (12, N'Princesa Mononoke', 1997, 134)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (13, N'Um Sonho de Liberdade', 1994, 142)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (14, N'Beleza Americana', 1999, 122)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (15, N'Titanic', 1997, 194)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (16, N'Gênio Indomável', 1997, 126)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (17, N'Amargo pesadelo', 1972, 109)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (18, N'Trainspotting - Sem Limites', 1996, 94)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (19, N'O Grande Truque', 2006, 130)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (20, N'Donnie Darko', 2001, 113)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (21, N'Quem Quer Ser um Milionário?', 2008, 120)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (22, N'Aliens, O Resgate', 1986, 137)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (23, N'Uma Vida sem Limites', 2004, 118)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (24, N'Avatar', 2009, 162)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (25, N'Coração Valente', 1995, 178)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (26, N'Os Sete Samurais', 1954, 207)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (27, N'A Viagem de Chihiro', 2001, 125)
GO
INSERT [dbo].[movies] ([id], [name], [year], [duration]) VALUES (28, N'De Volta para o Futuro', 1985, 116)
GO
SET IDENTITY_INSERT [dbo].[movies] OFF
GO
SET IDENTITY_INSERT [dbo].[genre_movies] ON
GO
INSERT [dbo].[genre_movies] ([id], [gender_id], [movie_id]) VALUES (1, 1, 22)
GO
INSERT [dbo].[genre_movies] ([id], [gender_id], [movie_id]) VALUES (2, 2, 17)
GO
INSERT [dbo].[genre_movies] ([id], [gender_id], [movie_id]) VALUES (3, 2, 3)
GO
INSERT [dbo].[genre_movies] ([id], [gender_id], [movie_id]) VALUES (4, 3, 12)
GO
INSERT [dbo].[genre_movies] ([id], [gender_id], [movie_id]) VALUES (5, 5, 11)
GO
INSERT [dbo].[genre_movies] ([id], [gender_id], [movie_id]) VALUES (6, 6, 8)
GO
INSERT [dbo].[genre_movies] ([id], [gender_id], [movie_id]) VALUES (7, 6, 13)
GO
INSERT [dbo].[genre_movies] ([id], [gender_id], [movie_id]) VALUES (8, 7, 26)
GO
INSERT [dbo].[genre_movies] ([id], [gender_id], [movie_id]) VALUES (9, 7, 28)
GO
INSERT [dbo].[genre_movies] ([id], [gender_id], [movie_id]) VALUES (10, 7, 18)
GO
INSERT [dbo].[genre_movies] ([id], [gender_id], [movie_id]) VALUES (11, 7, 21)
GO
INSERT [dbo].[genre_movies] ([id], [gender_id], [movie_id]) VALUES (12, 8, 2)
GO
INSERT [dbo].[genre_movies] ([id], [gender_id], [movie_id]) VALUES (13, 9, 23)
GO
INSERT [dbo].[genre_movies] ([id], [gender_id], [movie_id]) VALUES (14, 10, 7)
GO
INSERT [dbo].[genre_movies] ([id], [gender_id], [movie_id]) VALUES (15, 10, 27)
GO
INSERT [dbo].[genre_movies] ([id], [gender_id], [movie_id]) VALUES (16, 10, 1)
GO
INSERT [dbo].[genre_movies] ([id], [gender_id], [movie_id]) VALUES (17, 11, 14)
GO
INSERT [dbo].[genre_movies] ([id], [gender_id], [movie_id]) VALUES (18, 12, 6)
GO
INSERT [dbo].[genre_movies] ([id], [gender_id], [movie_id]) VALUES (19, 13, 4)
GO
SET IDENTITY_INSERT [dbo].[genre_movies] OFF
GO
SET IDENTITY_INSERT [dbo].[genres] ON
GO
INSERT [dbo].[genres] ([id], [gender]) VALUES (1, N'Ação')
GO
INSERT [dbo].[genres] ([id], [gender]) VALUES (2, N'Aventura')
GO
INSERT [dbo].[genres] ([id], [gender]) VALUES (3, N'Animação')
GO
INSERT [dbo].[genres] ([id], [gender]) VALUES (4, N'Biografia')
GO
INSERT [dbo].[genres] ([id], [gender]) VALUES (5, N'Comédia')
GO
INSERT [dbo].[genres] ([id], [gender]) VALUES (6, N'Crime')
GO
INSERT [dbo].[genres] ([id], [gender]) VALUES (7, N'Drama')
GO
INSERT [dbo].[genres] ([id], [gender]) VALUES (8, N'Horror')
GO
INSERT [dbo].[genres] ([id], [gender]) VALUES (9, N'Musical')
GO
INSERT [dbo].[genres] ([id], [gender]) VALUES (10, N'Mistério')
GO
INSERT [dbo].[genres] ([id], [gender]) VALUES (11, N'Romance')
GO
INSERT [dbo].[genres] ([id], [gender]) VALUES (12, N'Suspense')
GO
INSERT [dbo].[genres] ([id], [gender]) VALUES (13, N'Guerra')
GO
SET IDENTITY_INSERT [dbo].[genres] OFF
GO
ALTER TABLE [dbo].[movie_cast]  WITH CHECK ADD  CONSTRAINT [FK__movie_cast__actor_id__2C3393D0] FOREIGN KEY([actor_id])
REFERENCES [dbo].[actors] ([id])
GO
ALTER TABLE [dbo].[movie_cast] CHECK CONSTRAINT [FK__movie_cast__actor_id__2C3393D0]
GO
ALTER TABLE [dbo].[movie_cast]  WITH CHECK ADD  CONSTRAINT [FK__movie_cast__movie_id__2D27B809] FOREIGN KEY([movie_id])
REFERENCES [dbo].[movies] ([id])
GO
ALTER TABLE [dbo].[movie_cast] CHECK CONSTRAINT [FK__movie_cast__movie_id__2D27B809]
GO
ALTER TABLE [dbo].[genre_movies]  WITH CHECK ADD  CONSTRAINT [FK__genre_movies__movie_id__2F10007B] FOREIGN KEY([movie_id])
REFERENCES [dbo].[movies] ([id])
GO
ALTER TABLE [dbo].[genre_movies] CHECK CONSTRAINT [FK__genre_movies__movie_id__2F10007B]
GO
ALTER TABLE [dbo].[genre_movies]  WITH CHECK ADD  CONSTRAINT [FK__genre_movies__gender_id__2E1BDC42] FOREIGN KEY([gender_id])
REFERENCES [dbo].[genres] ([id])
GO
ALTER TABLE [dbo].[genre_movies] CHECK CONSTRAINT [FK__genre_movies__gender_id__2E1BDC42]
GO
