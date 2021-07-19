module Sprites where

import Prelude ((-), negate)
import Types (AnchorPosition(..), Sprite, SpriteID(..))

tv :: String 
tv = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAYAAADimHc4AAAAAXNSR0IArs4c6QAAA2JJREFUeJztnU1u8jAQhoeKm6BeI0eq1G0PwBaJI+Uan3oWukBvvmAIiZ2x58fz7GARV/NgO8Mb6gMVcr5ebvPXP1/fh9Jr9Ux20VD4YRge3h/HkYhCRC6bi7VU+JQQkcdqkbYWPiVEbGOxOKWFTwkR73kqClfhU0LEa6Zi1Cp8Soh45NCq8Ckh4s6H9B9wvl5uaU/RE0ciotPpc/pEtlqC0nEgobcZcThfL7fT6XN64/f3HxHV24Sjj3jkSQDgElE6s3oRsSgAlIrgWtK8i1gVALaKqLWXeBWxWQBYEtF6E/ciIlsAgAgQfUQZxX1AibQaWO8jjhwXiT6iHBYBRP9nRO1NeOm6eN+aCDYBgFtE7nWsiWAXAPaK2CvQiohqAkCuCO4lTLuI6gLAmojam7hWEc0EgFQEaNVHaBPxQfTcVLUg+og7Ux4ACRKF6bmPmJYgFF5KRK99xNMe4E2E9j5icRO2LsJKH7F6F2RNhLU+YvNtqHYRVvuI7D4gFdEab30ESx7QYx8xDAMNw7C7j2DLA3rpI1L2zgj2PEDrHqGVanlALyLm46T70haq5wFeRXBdt1ke4EUEt9DmeYBVEbVmklgeoKWPkHrSDxyJ7sWQ+ERCgtT4RHKdNVCTB2hZmkCr21h1eYDk+LV+G/EOtXmA5Ixsifo8wLsIM3mAVxHm8gBvIszmAVLjc+MiD7Asg+WH2riFk5wVkuPvwV0eIDV+yVfRRI7zgFbjRx4gNH7kAULjRx4gNH7kAZXGXxMReUDF8TH2/DVolgfgORY819JrHjCfkeM4ts8DpEVo2CNU5AG9i2jN4iYcItqwehcUIuqy+TY0RNQhuw9IRbRGuo/gpvjr6J+v7wNkRB5Qzu5OWHppwphWlya2ryKkRUjvEWrygN5EqM0DvIswkwd4E2E2D7Auwk0eoK2PUJEHSDAX0XUeUPXqG9C2NBG1zQPET9AA6KylHrCaixfNA6SRnhGtUScA9CJCrQDgXYR6AcCrCDMCgHQfwY2au6BcpPMILszNgBTrS5N5AUBaRGkeoOIfWNegRETJg1l7z7JxKwDkiMgRwHWIkHsBYIuILQK4T2/qRgB4J+KdgFrHZnUnALwS8UpA7fPKuhUA5iLmAlodFNe9AJB21tInawRBEARBEPjmDzs4VefD2DuFAAAAAElFTkSuQmCC"


block4x3 :: String 
block4x3 = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAYAAADimHc4AAAAAXNSR0IArs4c6QAAA2JJREFUeJztnU1u8jAQhoeKm6BeI0eq1G0PwBaJI+Uan3oWukBvvmAIiZ2x58fz7GARV/NgO8Mb6gMVcr5ebvPXP1/fh9Jr9Ux20VD4YRge3h/HkYhCRC6bi7VU+JQQkcdqkbYWPiVEbGOxOKWFTwkR73kqClfhU0LEa6Zi1Cp8Soh45NCq8Ckh4s6H9B9wvl5uaU/RE0ciotPpc/pEtlqC0nEgobcZcThfL7fT6XN64/f3HxHV24Sjj3jkSQDgElE6s3oRsSgAlIrgWtK8i1gVALaKqLWXeBWxWQBYEtF6E/ciIlsAgAgQfUQZxX1AibQaWO8jjhwXiT6iHBYBRP9nRO1NeOm6eN+aCDYBgFtE7nWsiWAXAPaK2CvQiohqAkCuCO4lTLuI6gLAmojam7hWEc0EgFQEaNVHaBPxQfTcVLUg+og7Ux4ACRKF6bmPmJYgFF5KRK99xNMe4E2E9j5icRO2LsJKH7F6F2RNhLU+YvNtqHYRVvuI7D4gFdEab30ESx7QYx8xDAMNw7C7j2DLA3rpI1L2zgj2PEDrHqGVanlALyLm46T70haq5wFeRXBdt1ke4EUEt9DmeYBVEbVmklgeoKWPkHrSDxyJ7sWQ+ERCgtT4RHKdNVCTB2hZmkCr21h1eYDk+LV+G/EOtXmA5Ixsifo8wLsIM3mAVxHm8gBvIszmAVLjc+MiD7Asg+WH2riFk5wVkuPvwV0eIDV+yVfRRI7zgFbjRx4gNH7kAULjRx4gNH7kAZXGXxMReUDF8TH2/DVolgfgORY819JrHjCfkeM4ts8DpEVo2CNU5AG9i2jN4iYcItqwehcUIuqy+TY0RNQhuw9IRbRGuo/gpvjr6J+v7wNkRB5Qzu5OWHppwphWlya2ryKkRUjvEWrygN5EqM0DvIswkwd4E2E2D7Auwk0eoK2PUJEHSDAX0XUeUPXqG9C2NBG1zQPET9AA6KylHrCaixfNA6SRnhGtUScA9CJCrQDgXYR6AcCrCDMCgHQfwY2au6BcpPMILszNgBTrS5N5AUBaRGkeoOIfWNegRETJg1l7z7JxKwDkiMgRwHWIkHsBYIuILQK4T2/qRgB4J+KdgFrHZnUnALwS8UpA7fPKuhUA5iLmAlodFNe9AJB21tInawRBEARBEPjmDzs4VefD2DuFAAAAAElFTkSuQmCC"

block4x3hover :: String 
block4x3hover = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAYAAADimHc4AAAAAXNSR0IArs4c6QAAA0hJREFUeJztnUFS40AMRRUqC47ADWc1VGU5HACWqSKr3JAjsGMWKaWcTozdbbW+pNZbAQP0lB62+/sn5R018v55/Jl+/vZ62LX+rpHZ1/4AD/7P33/Fv1y+niLqWD2s+cHfcj59EFGKWMvikNYOviRFrGN2OK2DL0kRv3M3FKnBl6SIx1yH0WvwJSnilp3W4EtSxIUn9H/g/fP4U2aKkdgTET2/HOh8OhKR3ikoc8SFaxB7fjkQEXUTMT94Kr4+loi7JCwtYmnwJaOJmL0VsVVE7eBLRhGxeC+oVsTWwZdEF7H6ZtySCOnBl0QVUX03tBTBaOWIaCKacwCLQOM9R1QfAY/IHNGOiACizBGtiAlgMkfUIS6AyRyxjm4CmMwRv9NdAJM54jFqApjMEbc8ERF9fx2Xvk+czBEXrn0AS0AMZuQccdcHoESMmiNm+4AoIqzniMU+wKsILzlidR/gRYS3HFHdB1gV4TVHNPcBiK3rdP0oOaI5iE23rt9fR8gRgfojIJITIdYHjJIjSraKEO8DrF4jrNKtDxhFxPTizx/X0L0PiCpCatel1gdEESG93VXvA7yK6JUzYH2AlRyhnaxL9kT4fTxqfSJcsmbM9AFWTk2M1jbWXB+AXJ/X1swQZvsA5BGpifk+ILoIN31AVBHu+oBoItz2Achb0ZKIvD8A/boizzJE3qjNWzjkUYFcfwvh+gDU+i23ookC9wFa62cfAFo/+wDQ+tkHgNbPPqDT+ksisg/ouD6vPf2cUesD+HUs/CaFUfuA6RF5Pn3o9wFoERauESb6gNFFaDN7EU4ROizuglJEX1ZvQ1NEH6pzQClCG3SOkKb5dvTb62HHMrIPaGdzEkafmnhNr6cmsVsRaBHoa4SZPmA0EWb7gOgi3PQB0US47QO8iwjTB1jLESb6AARTEUP3AV1/+wqsnZqIdPsA+BM0GE7WqBdYTcVD+wA06CNCG3MCmFFEmBXARBdhXgATVYQbAQw6R0hjZhdUC7qPkMLdEVDi/dTkXgCDFmGmD0CjLWLrMzHDCWB6i5B6GGlYAYy0COmnwIYXwGwV0evxu8MIYGpF9H7u8XACmCURWg+cNvEYDwuUyRr9ZI0kSZIkSZLY/Adu6z+xcx/cMQAAAABJRU5ErkJggg=="

block3x1x2 :: String 
block3x1x2 = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAAAXNSR0IArs4c6QAAAnJJREFUeJzdm02uwjAMhF3ETSquwZGQ2HIAtkgcKddAPQtvgab0pYQmju04zI5K5Oer407cdCCmrvfbc/n7cjoP3LZaqnjQmPjxePx3PYRARP2ByB5sauKxegOxOcjcicfqBURycNyJx/IOYjUoqYnH8gpiHozWxGN5AzFYTTyWFxC7lp0TvSIv9hSW2hMRjeNhviNWSyDuBxCsI2K43m/PcTzMF6bpQUR6SdCbj1gBgKRAcCPLCkQSAMQFIbWktEFsAoByQWjlEi0Q2QCgFAjrJCoFohgABBBQrz6C7QM40DRU6yP2EoPo2UeIACB6R4R2Eky1i+ulIMQAQNIgStspBSEOAKoFUQswF4QaAKgUhPQS2gKhDgDaAqGdRFMgzABAMQjIykfEIHZEa1NjIS8+Ykf0Gsw0PZqAQP8hhFVUaAj9IBLmJYA7AgjWd6iVj1jlgF8DsdVOMgn2DiL3f5tPgd5AlALLfgx6B8GNlGIfEIOwlrSPEKkHtPYRNYlS5MVIax9RI/F6QKscwZVaPaAXEOr1AO8gzOoBXkGY1wO8gWhWD/DyxHBRD2jRP4zUHqUhVEhahCZ8hEX/S8scQngvgdYgtHNEdj3g10Cw6wG9gxCrB/QGQq0e4B0Etx7Afre+fCXNhVGzziXOJ4QQ+Nvhy+k8ICpa+4iaekC1E2y9NGolZoV7BSG+F+gNhNpmqBcQ6rtB7yDMtsNeQZjXA2IQrdX8q42aiKg50A3n2BwAxAHBARCfMHUDACoBUQIgdbTWHQAoB0QOgK0zxW4BQN9AfAOQe5jaPQDoE4hPAEpPkXcDAFqCWALgHp/vDgAk9fn+H+tiC8TprBT8AAAAAElFTkSuQmCC"

bigtv :: String
bigtv = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAYAAADimHc4AAAAAXNSR0IArs4c6QAAA2JJREFUeJztnU1u8jAQhoeKm6BeI0eq1G0PwBaJI+Uan3oWukBvvmAIiZ2x58fz7GARV/NgO8Mb6gMVcr5ebvPXP1/fh9Jr9Ux20VD4YRge3h/HkYhCRC6bi7VU+JQQkcdqkbYWPiVEbGOxOKWFTwkR73kqClfhU0LEa6Zi1Cp8Soh45NCq8Ckh4s6H9B9wvl5uaU/RE0ciotPpc/pEtlqC0nEgobcZcThfL7fT6XN64/f3HxHV24Sjj3jkSQDgElE6s3oRsSgAlIrgWtK8i1gVALaKqLWXeBWxWQBYEtF6E/ciIlsAgAgQfUQZxX1AibQaWO8jjhwXiT6iHBYBRP9nRO1NeOm6eN+aCDYBgFtE7nWsiWAXAPaK2CvQiohqAkCuCO4lTLuI6gLAmojam7hWEc0EgFQEaNVHaBPxQfTcVLUg+og7Ux4ACRKF6bmPmJYgFF5KRK99xNMe4E2E9j5icRO2LsJKH7F6F2RNhLU+YvNtqHYRVvuI7D4gFdEab30ESx7QYx8xDAMNw7C7j2DLA3rpI1L2zgj2PEDrHqGVanlALyLm46T70haq5wFeRXBdt1ke4EUEt9DmeYBVEbVmklgeoKWPkHrSDxyJ7sWQ+ERCgtT4RHKdNVCTB2hZmkCr21h1eYDk+LV+G/EOtXmA5Ixsifo8wLsIM3mAVxHm8gBvIszmAVLjc+MiD7Asg+WH2riFk5wVkuPvwV0eIDV+yVfRRI7zgFbjRx4gNH7kAULjRx4gNH7kAZXGXxMReUDF8TH2/DVolgfgORY819JrHjCfkeM4ts8DpEVo2CNU5AG9i2jN4iYcItqwehcUIuqy+TY0RNQhuw9IRbRGuo/gpvjr6J+v7wNkRB5Qzu5OWHppwphWlya2ryKkRUjvEWrygN5EqM0DvIswkwd4E2E2D7Auwk0eoK2PUJEHSDAX0XUeUPXqG9C2NBG1zQPET9AA6KylHrCaixfNA6SRnhGtUScA9CJCrQDgXYR6AcCrCDMCgHQfwY2au6BcpPMILszNgBTrS5N5AUBaRGkeoOIfWNegRETJg1l7z7JxKwDkiMgRwHWIkHsBYIuILQK4T2/qRgB4J+KdgFrHZnUnALwS8UpA7fPKuhUA5iLmAlodFNe9AJB21tInawRBEARBEPjmDzs4VefD2DuFAAAAAElFTkSuQmCC"


block :: String 
block = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAETSURBVFhH7dZdboJAFIZhcCvEbbAjE2/dgF5qdEdsw7AWDKMvwQMzc86Evwvei2Kb1O9J20wnb5omS+n2evx94+V0zn8vTZkBDJdl6T6nqqrc0wpRA3zDMiskCtAOy7QQLyB1WBaDDABTDct8kA4w17BMQvLr877IsAzIwX1cMQcoiqMToZozdviJu19BC6C6frvnXH+E/fdtvzYA0FSQsWEKAigVEhomFYC0EM0wmQDkg1iGKQlAQMgyTC0g+Rzoo1PGaRsH0ZrtgB2wDYA8VJaIk3NwJZviWA7FcHcl811Kp/wH1SaHKXotD0E0AN8weQEUgoQAsWGKAmgMMgbQDpMaQH1IH2AdJjOAgJB1+FuWfQDwf/DJ94tzFQAAAABJRU5ErkJggg=="

blockhover :: String 
blockhover = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAhCAYAAAC4JqlRAAAAAXNSR0IArs4c6QAAAQVJREFUWIXtlysOwkAQhv82dT1Nj1OHrCJBYDgApoIEhazjOJwGDQJmU9pu5rEPzI7b5/9ls/lnpoIxztfLaz4+7Q+V5Z7GKnzc3Rcrn3ktiHizX/g3xqmHBoTdJBW2gngXrcJakNVkLGEpiBukEuZAqlzCPpA6q+pG1AAwdC3GqXdUKYN06MWdEQ1d6zYA6T7h8t6VE8YG4e7xWnEoiPQcmwu0IFpgcTLiQKwvpc6GSxAK618x+wCBhIgHAcSKAlAACkANALfHM7swGVnjarRvZTQ3mJTCpOusODWIryhd5YLYIFxZ7k1GoSDSxoTNhloQbWsmTscciFaYwtRSA/Ha878b0Rs+n5T1oh0rQgAAAABJRU5ErkJggg=="

top :: String 
top = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAATZJREFUWIXtlr8OgjAQxg/DwOQL0K0MTMa4uLr5Bj6kb+Bm2FyMccIEEgd8ASc3nA7r0eu/wNZvo+3195XetU0gUIfdple/j+drEjJPGgreb9e0qw8x4myAAzddDaTdy4h1kGHF0HQ1FKLUxp0uN3AxwnaawD6yGRk1TgV2NTLkwFxgW46kCJZ5NguY5gg1suACbRPbVIiSTVBVKbrCPZJ5pnXPrchXKqd6Jr8cwF+jM+ID5kpTnVfV6CDCAe3row2wgSlcB8Yx1fMBiS771ZWjEd/qMIHV/qEmOSMYhAE2I65gLEP2IJJ5ZtxLaoSCua2gB1HwUYwTonzBKPY2VAK0WyPzDO7tGwAAVnIJhSj/csf1MrJexzojFIYqROkMdjbAGaFJ5gtGBT2jAKZ7kkVFRUVFRX0BIP7EaRMZdXYAAAAASUVORK5CYII="

hover :: String 
hover = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAQ9JREFUWIXt1yEOwjAUxvGvywRil0GQoHAIDkOC5QIgIXAYxBxqCWKXmcAN9ZqttOt7b93UPgmD/0+Qppi2baHZ9XnvffB8PBnN9xgpgML77br3elnVKggbEAq7k0KiAG5YCwkCtGEp5A+QKsyFWMBU4RjEXB63WcIhSDZr1bMMAIrmi7KqrWrKUeew2wAAcnqjaL72AWC6HyGFabn7YGpIKBwEpILEwlGAFsINswFciDQsBoQgNGmYpj4HCDImPgqQagtgASyADACaYjV7+PX+APBcyboHTGwElxxEFLZXstCllAORANwwLXotH4JwAKFwFMCBDAFiYTZgCOIDcMNigA/SBUjDaoALoWn/nv8AfXHc2jTm5NEAAAAASUVORK5CYII="

board1 :: String 
board1 = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAAAXNSR0IArs4c6QAAAGBQTFRFAAAAIiA0RSg8Zjkxj1Y733Em2aBm7sOa+/I2meVQar4wN5RuS2kvUkskMjw5Pz90MGCCW27hY5v/X83ky9v8////m623hH6HaWpqWVZSdkKKrDIy2Vdj13u6j5dKim8w+2O8zwAAACB0Uk5TAP////////////////////////////////////////+Smq12AAAAbUlEQVQ4jeXRwQ0AIQhEUShAW7D/LhejLhBn2AJ2rv8dSBD535qtzMNGycqUeIYk54vcORGcA+FgkzY+iPZRElGdmRMD6w5GRPSciskGnLyAkQAwAV/JBP41EvJ6JwBkAkEkBDih4JACLFKCSR7jGS8ug2CQvgAAAABJRU5ErkJggg=="


board2 :: String 
board2 = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAAAXNSR0IArs4c6QAAAGBQTFRFAAAAIiA0RSg8Zjkxj1Y733Em2aBm7sOa+/I2meVQar4wN5RuS2kvUkskMjw5Pz90MGCCW27hY5v/X83ky9v8////m623hH6HaWpqWVZSdkKKrDIy2Vdj13u6j5dKim8w+2O8zwAAACB0Uk5TAP////////////////////////////////////////+Smq12AAAAdElEQVQ4jdXPQQ7AIAhEUT0AXuHf/5Y1bSMixkm6KzucJ2IxK+cCQUAQEAQEAUFAEBAEBFlBIhksZAcC+QTMcNCbHMcJkTxxq2GCk/d2rQ5mMoaHfJDp7RXcZF4t5f2oL9a824Da8two2jlffrYVItfgz3UBW3QgmUU+5CsAAAAASUVORK5CYII="

wall :: String
wall = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAALxJREFUWIXtl0sKgzAQQJPiTYL7QrcyRxK69QBuCx4p1yieRVcTOkRJZ/IRZN4qRsx7gpBojZB5+Wy/19P4tpJ12A+hGADIvPdeFNLlinNJBqTE+OYAEMZFAjjiHKKAVuIooLU4BFwlDgFnN2qLSYBzffQF1xYjDxw41zeXk4Ar5IcBrdEADbhPgGQrNoZxIEmJpUcycUCuWBxQSswOKC3+O6CWmASs65fshsPzZfGgUkuMhMVL/WgoisJlB0vbWSQGLsw3AAAAAElFTkSuQmCC"


wall2 :: String
wall2 = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAAAXNSR0IArs4c6QAAAmVJREFUeJztmz1Ow0AQRr9EuYYrxCWwlA4aWhAdEjWSW5QcAESLRI1Eh0JLA12kUPkGiCY+SCjQmGSCZXu9M+NN9jXZuPDO97CV/WMAR9I0Xa1/XywWA9d7WdK6aAp+//iwcf3mOgMQnojGxVYF54QmorbIpsE5oYioLM41OKfvIraK8hWc01cRZTFSwTl9EzHQCs7pi4iRVcenF2fUXAF2IkYAkE0n5V9E+kmYz+cAgPF4vPF5c52ZiBikabrKppPywsPtHQD/InjwKrRfjS0BhC8RTYNztERUCiBcRbgG50iLqBVANBXhKzhHSkRjAUSVCKngHN8iWgsgSAT9nEkH5/gS4TwOyKYTfH9/4e3lFYC+AF90HgidXpzh4OBQbRyx3g+1u+BtJEivkZQIqft6Hwr7FiH9ZInNBbqK0HqlxCdDbUVoBSfUZoN1IrSDE+rTYS6C0A5ODE16xZ8IwC48YCigL0QB1gVYEwVYF2BNFGBdgDXOAj7fP/5th0ZrART26OS4vEbtEEU0FvBfcE6IImoFNAnOCUlEpQCX4JwQRGwJ8BGc02cRpQCJ4Jw+ihgWRYHP9w/R4BzNvuoYJkmCPM9Ni5g9PZv1PSp3Vm7vVsDmQoUW51eXAH5FUFuLcklsX0VsrQnum4jKRdF9EVG7KrzrIhovi++qiNb7AlzE2nE3Nc6vLjF7ekZRFJ3v5bwxsnYwweSJyPMcSZJguVx2uk/nnSHtV8P3ERlvW2PSIqQOSXnfG/QtQvqYnNjmaFcRWgclxXeH24rQPiqrtj1eJ8Lq+LzZWf1d+be7SCQSiUQi4fID8X2NDeyAu78AAAAASUVORK5CYII="  

thiccWall :: String
thiccWall = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAAAXNSR0IArs4c6QAAAt5JREFUeJztm7tq40AUhn8bv4aqsC+xBnfZJm1CukBqg1pjP8Au2y5sHUi3ZNttks7gVHqDJZUexKlGUY49zO1cJOO/sSxbc+b/GOmM5jKBkebz+b7/fbfbTSzqoR7UGf/5+9en86tlDUAfhFown3EqbRDiQWKNU2mBECs81ziVNAj2QrmMU0mBYCtMyjgVN4jiQrSMU3GBmOVeSPO4tq5ur93hHsgHkXxRKI9Lt4TtdgsAWCwWR+Ongoj+c2oe5wbhM+6LHwsi+KfSPF4KIta4L34IhPdH7jyeWk6ucV98H4iDk9J5PFQul3FffAqi+6Kdx2kcKeO++A7ExDqPu3QmbdwXP7sfUCpn/N+fvwD0ATjNAKDerM3yuPvUit+Ps1rWHy2g3qxFKxK6x108qfi+cg9uAW4QqQ83bhChcrzPgFIQpU/1UhCx1wUfgqkguNNZKohUYNFZIARCOo+HQOS2lOQ0SEFo53EKgp5PVXY/oN6s8fb23zyPA2UPyuKO0NXtNS4uvpjl8VKx9QSl+xFS5bJ3hblBSLcssXeBUhBat5T4y1AqCC3jTmpvgyEQ2sad1F+HKQgnbeNOU5Oo+AAB2JkHDAEMRWcA1hWw1hmAdQWsdQZgXQFrZQN4fX45emyhp4fH7GuTATizX79ddufcsRWIm/s7AHkgogEcM041RhBBADHGqcYEwgsgxzjVGEAcAOAwTjVkEB0ACeNUQwQxbdsWr88vosapNGMd0839HZ4eHtG2LaZVVaFpGtMKleTxXDVNg6qqMOvWzHz/sQc+D1Roqd803bGU6BKZbkjs1EH4FkkdjAmeGojQMjnvoOjYQcQulAyOCo8NROpS2ehh8aGDyF0snTwvQEH0lq2rqZ/Hq6rCallnL5fPnhjpBTRpES6Pm22YcNK+Nbi3zLBNjUmDkNo0xT43yA1Cetuc2ORoKQitjZPis8OpILS3zqpNj4dAnPzmaaqhbJ9/B5bOK8sO5hygAAAAAElFTkSuQmCC"

desk :: String 
desk = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAAAXNSR0IArs4c6QAAAt5JREFUeJztm7tq40AUhn8bv4aqsC+xBnfZJm1CukBqg1pjP8Au2y5sHUi3ZNttks7gVHqDJZUexKlGUY49zO1cJOO/sSxbc+b/GOmM5jKBkebz+b7/fbfbTSzqoR7UGf/5+9en86tlDUAfhFown3EqbRDiQWKNU2mBECs81ziVNAj2QrmMU0mBYCtMyjgVN4jiQrSMU3GBmOVeSPO4tq5ur93hHsgHkXxRKI9Lt4TtdgsAWCwWR+Ongoj+c2oe5wbhM+6LHwsi+KfSPF4KIta4L34IhPdH7jyeWk6ucV98H4iDk9J5PFQul3FffAqi+6Kdx2kcKeO++A7ExDqPu3QmbdwXP7sfUCpn/N+fvwD0ATjNAKDerM3yuPvUit+Ps1rWHy2g3qxFKxK6x108qfi+cg9uAW4QqQ83bhChcrzPgFIQpU/1UhCx1wUfgqkguNNZKohUYNFZIARCOo+HQOS2lOQ0SEFo53EKgp5PVXY/oN6s8fb23zyPA2UPyuKO0NXtNS4uvpjl8VKx9QSl+xFS5bJ3hblBSLcssXeBUhBat5T4y1AqCC3jTmpvgyEQ2sad1F+HKQgnbeNOU5Oo+AAB2JkHDAEMRWcA1hWw1hmAdQWsdQZgXQFrZQN4fX45emyhp4fH7GuTATizX79ddufcsRWIm/s7AHkgogEcM041RhBBADHGqcYEwgsgxzjVGEAcAOAwTjVkEB0ACeNUQwQxbdsWr88vosapNGMd0839HZ4eHtG2LaZVVaFpGtMKleTxXDVNg6qqMOvWzHz/sQc+D1Roqd803bGU6BKZbkjs1EH4FkkdjAmeGojQMjnvoOjYQcQulAyOCo8NROpS2ehh8aGDyF0snTwvQEH0lq2rqZ/Hq6rCallnL5fPnhjpBTRpES6Pm22YcNK+Nbi3zLBNjUmDkNo0xT43yA1Cetuc2ORoKQitjZPis8OpILS3zqpNj4dAnPzmaaqhbJ9/B5bOK8sO5hygAAAAAElFTkSuQmCC"

twoblock :: String 
twoblock = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAAAXNSR0IArs4c6QAAAb1JREFUeJztmkFugzAQRYeIm6BcgyNV6rYHyDZSjsQ1qpwlXVSfuiYE48yMDfy3g8XY87DNYNNIJpfb9RFef318NrmxSrK600i87/t/94dhEJHtiUju7FziMVsTsdjJ1MRjtiJitnO5icfULmLSKa3EY2oVMXbGKvGY2kQ0XonH1CLiVLJxkd+RF9cUnrQiIl13Hp+I1xSI24EE7xHRXG7XR9edxxv3+7eI2C2CtdUREwFAS0TuyPISMSsA5IrQmlLWIhYFgFQRVmuJlYhkAWBOhPciqiVitQAAEWCrdUR2HZAjrUZUCiHUEXgqlqAdrRHXqkSRvxFhvQhqx1UTALRFWC+u6gLAuyK83ipmAsBaEV6JA3MBYEmEd+LATQCIRQDvxMFJZFrUeBDWEaWSFxFpUUnhe3wvBU4q4xQ4qojJGnA0EbOL4FFELL4F9i4i+TW4VxGr64BYxNZR+RwuUUdofXqr7a/lTI2cDVf1LTGNICFrRKwRYLYpqhksJEVEigDzbXGLoCGvRLwS4HYwYhk85JmIZwLcj8Y8GgkJRYQCSh2XFzubr+U3u+L/BxBCCCGEEEIIIYQQQgghxI0fWuIlYWeMwzYAAAAASUVORK5CYII="

twostack :: String 
twostack = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAwCAYAAABwrHhvAAAAAXNSR0IArs4c6QAAASxJREFUWIXt2MENgzAMBVCD2CRiDUaq1GsH6LVSR8oaVWZpT0YhwcR2nPQS34DAf0IptTyBsp7v1zc+ftzuk+Y54psweNu2w3nvvQrCXkwFpyWFFBdxg7UQ8qI2WArJTloFcyH7QavgEmTqFUxB5q6pJzUDADi3gvd+V7UszME3vuAF59Z9AUC7TZg+d0kXWkNKz8kAVhDufSRAC5GCiwAuRPum2AAKgqXdK+rvAEJqwqsAVjUAAzAAMwBACJ/uwYeGxLkVQvh0gRT7AUTEXzqrYABBP2AFqe4HtBDzfoALad4PUJDu/UD8i4l3tbRGPzAAAzAAf+8HshGN5E8H4ZIPUTaiSRdIIBJAcUilgXAA4jGdBHIFqB5UciBnAPNR7RUkBjQfVlMQLO24/ge95N7BuhCpqQAAAABJRU5ErkJggg=="

twostackHover :: String 
twostackHover = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAwCAYAAABwrHhvAAAAAXNSR0IArs4c6QAAAThJREFUWIXtmM0NgkAQhR+EWuiASqxDE+LNArwZEqnDSuzAZvSgQ1ZwMj/M4mXfjWWz7wtZZl6mglPn6/BMn0+HvvKc03iNj/vb7M173Qqi3swbf+sy7mABETdpjb0g7EuvsRVksRhlrAWZHnIZSyDVVsYcSL2p6w/VANC1PS7jbqLKKfKhLz4Voq7tPxsGAPku4fzcRSWMBuGMWYAoEMlYBPCCaI3VAFoQq7EZgAMhee+Kuw4QyBrzVQBRKgAFoADUAHB/DNK+cH0Fkq7tcX8Mm4CIeYAg0koXZQwY8kAUyOo84AUJzwNakOx5gAPZPA+kf0x6q60qeaAAFIAC8Pc80NCohCYl0W2YMybfqRTnBuGGVIteEA0ijenYZrQWRDuoFLuhFcQ6qlW3YwnEakxyjdhTkDmgVS9039LOP6pY1AAAAABJRU5ErkJggg=="

speaker :: String 
speaker = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAwCAYAAABwrHhvAAAAAXNSR0IArs4c6QAAAXdJREFUWIXtl7FtwzAQRb+DrMAVOMEVaTIAawNZIoU0gMsMwDkMpFaRVuVNoA0CAllBqahIiikdT1GcwPyVQYh8z+LxaAMlJSW3noN2orW2j5+7rlOvc68FO+fGw71WRDwhAZ6kaRrkiqw+KAFvEUk+YK3tjTEgIjF4HmZGCGFR5G5pgRCCGi6dvyhgjEHTNMMrlSbOkWzb6ikwxgyLArIizKkX0TEkIjBzEqIBZwkwM9q2RV3X30S04JjFGoghogkc+NqaLXCRABHBew/v/aYjqRKI8Jg9JBYFxvC9JEQ1kJtxrWwSqOv64lgKwMxZ8FUBZp5IpOARfD4ds+DASh8IIUwklr7d+XTE08srAAw1Imnh4us4nvu5oHNuEJuDJdfxaiccLZIU0YDFAhIRDTjm6j9K1X2g67pDvAfe3x76lcf3y/hNaLJLJ/w1gaqqemDbFvzvN/BnBB6fP9Rzs/8bApcrP47l9oSrb4G6gwE/1w1LSkpuO5+WvMGAItVy2gAAAABJRU5ErkJggg=="


oneTwoOne :: String 
oneTwoOne = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAAAXNSR0IArs4c6QAAAfZJREFUeJztmrtOwzAYhU+rbIiFV4i6sCFm8jiICYmVB2BFYkI8jpkRG0uVV2BBzGVAJ0qdpL5fIv3f1FaK/Z8vcWzZ3Xy/vx0A4OLmdoOMPL08H8bfH+8fsvZPhk5ziWDwruuOfldKAcgvYtJZKhFLwXVyi1jsJJYI2+A6uUQYG/cV4RtcJ7UI60ZtRcQKrpNKhHNjSyJSBdeJLcK7EYp4/fwFkD64TiwRje+FDH53dQYA+AqpoiDOAvRHncEvfz7+v59fRyptHt75ruuGzyFYCzCNcQZPJWIcPCZGAa4vt9giUgUniwJC3+qhIlIHJxMBsaczVxG5gpNBQOp53CQid3DS5FrAEF1EqXUE8V4HhMLgQLnwALAFgLbdQSkVZV41wX5Khh4zPAFtuwOQbiyWGuMmJkMgtohag5PFd0CoiNqDE+NL0FXEWoIT61nAJGJtwYnzNKiLIGsLTra+F1IEUCZ8rCm72ELIl9hbYqsRkGpTtHoBqbfFqxWQ62CkOgG5j8aqEVDqcLQKAUqpYsfjDQD0/f5oXs9BqTuuM3TOnSEXEX2/B+C2EKolOJkU4SLCRUBtwcliMTYibATUGpwYizol4pSA2oMT6+LmRMwJWEtw4lzkWMRYwNqCE+9ia/mbmyAIgiAIgiAIgiAIgiAIgiAIgi1/HSE21RjnWbUAAAAASUVORK5CYII="


-- wallSprite :: Sprite
-- wallSprite = {
--   id: Placeholder,
--   pos: {x: 0.0, y: 0.0},
--   originOffset: {x: 2.5, y: 1.5},
--   clickOffset: {x: 0.0, y: 0.0},
--   image: wall2, 
--   images: {normal: block4x3, hover: block4x3hover},
--   isBeingDragged: false, 
--   size: {x: 2.0, y: 1.0, z: 2.0}
-- }

thiccWallSprite :: Sprite
thiccWallSprite = {
  id: Placeholder,
  pos: {x: 0.0, y: 0.0},
  originOffset: {x: 3.0, y: 1.0},
  clickOffset: {x: 0.0, y: 0.0},
  image: thiccWall, 
  images: {normal: block4x3, hover: block4x3hover},
  isBeingDragged: false, 
  size: {x: 2.0, y: 2.0, z: 2.0},
  anchor: LogicalOrigin
}


blockSprite :: Sprite
blockSprite = {
  id: Placeholder,
  pos: {x: 3.5, y: 6.0},
  originOffset: {x: 1.5, y: 0.5},
  clickOffset: {x: 0.0, y: 0.0},
  image: block, 
  images: {normal: block, hover: blockhover},
  isBeingDragged: false, 
  size: {x: 1.0, y: 1.0, z: 1.0},
  anchor: CenterNorth

}

twoBlockSprite :: Sprite
twoBlockSprite = {
  id: Placeholder,
  pos: {x: 0.0, y: 0.0},
  originOffset: {x: 1.5, y: 0.5},
  clickOffset: {x: 0.0, y: 0.0},
  image: twoblock, 
  images: {normal: twoblock, hover: twoblock},
  isBeingDragged: false, 
  size: {x: 2.0, y: 1.0, z: 1.0},
  anchor: CenterSouth
}

threeBlockTwoZSprite :: Sprite
threeBlockTwoZSprite = {
  id: Placeholder,
  pos: {x: 0.0, y: 0.0},
  originOffset: {x: 1.5, y: 0.5},
  clickOffset: {x: 0.0, y: 0.0},
  image: twoblock, 
  images: {normal: block3x1x2, hover: block3x1x2},
  isBeingDragged: false, 
  size: {x: 3.0, y: 1.0, z: 2.0},
  anchor: CenterSouth
}

twoStackSprite :: Sprite
twoStackSprite = {
  id: Placeholder,
  pos: {x: 0.0, y: 0.0},
  originOffset: {x: 2.5, y: 1.5},
  clickOffset: {x: 0.0, y: 0.0},
  image: twostack, 
  images: {normal: twostack, hover: twostackHover},
  isBeingDragged: false, 
  size: {x: 1.0, y: 1.0, z: 2.0},
  anchor: CenterSouth
}

-- speakerSprite :: Sprite
-- speakerSprite = {
--   id: Placeholder,
--   pos: {x: -1.0, y: -1.0},
--   originOffset: {x: 1.5, y: 0.5},
--   clickOffset: {x: 0.0, y: 0.0},
--   image: speaker, 
--   images: {normal: block4x3, hover: block4x3hover},
--   isBeingDragged: false, 
--   size: {x: 1.0, y: 1.0, z: 2.0}
-- }

-- oneTwoOneSprite :: Sprite
-- oneTwoOneSprite = {
--   id: Placeholder,
--   pos: {x: -1.0, y: -1.0},
--   originOffset: {x: 1.5, y: 0.5},
--   clickOffset: {x: 0.0, y: 0.0},
--   image: oneTwoOne, 
--   images: {normal: oneTwoOne, hover: oneTwoOne},
--   isBeingDragged: false, 
--   size: {x: 1.0, y: 2.0, z: 1.0}
-- }

-- tvSprite :: Sprite 
-- tvSprite = {
--   id: Placeholder,
--   pos: {x: 2.5, y: 0.0},
--   originOffset: {x: 3.5, y: 2.5},
--   clickOffset: {x: 0.0, y: 0.0},
--   image: tv, 
--   images: {normal: block4x3, hover: block4x3hover},
--   isBeingDragged: false, 
--   size: {x: 4.2, y: 1.0, z: 3.0}
--   -- width: 50.0, 
--   -- aspectRatio: 1.24
-- }