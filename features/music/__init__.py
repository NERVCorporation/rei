from typing import TYPE_CHECKING

from .music import Music

if TYPE_CHECKING:
    from tools.rei import rei


async def setup(bot: "rei"):
    await bot.add_cog(Music(bot))
