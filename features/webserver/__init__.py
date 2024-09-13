from typing import TYPE_CHECKING

from .webserver import Webserver

if TYPE_CHECKING:
    from tools.rei import rei


async def setup(bot: "rei"):
    await bot.add_cog(Webserver(bot))
