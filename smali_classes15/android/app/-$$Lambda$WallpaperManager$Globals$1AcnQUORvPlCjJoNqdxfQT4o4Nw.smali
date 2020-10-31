.class public final synthetic Landroid/app/-$$Lambda$WallpaperManager$Globals$1AcnQUORvPlCjJoNqdxfQT4o4Nw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/WallpaperManager$Globals;

.field public final synthetic f$1:Landroid/util/Pair;

.field public final synthetic f$2:Landroid/app/WallpaperColors;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/WallpaperManager$Globals;Landroid/util/Pair;Landroid/app/WallpaperColors;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$WallpaperManager$Globals$1AcnQUORvPlCjJoNqdxfQT4o4Nw;->f$0:Landroid/app/WallpaperManager$Globals;

    iput-object p2, p0, Landroid/app/-$$Lambda$WallpaperManager$Globals$1AcnQUORvPlCjJoNqdxfQT4o4Nw;->f$1:Landroid/util/Pair;

    iput-object p3, p0, Landroid/app/-$$Lambda$WallpaperManager$Globals$1AcnQUORvPlCjJoNqdxfQT4o4Nw;->f$2:Landroid/app/WallpaperColors;

    iput p4, p0, Landroid/app/-$$Lambda$WallpaperManager$Globals$1AcnQUORvPlCjJoNqdxfQT4o4Nw;->f$3:I

    iput p5, p0, Landroid/app/-$$Lambda$WallpaperManager$Globals$1AcnQUORvPlCjJoNqdxfQT4o4Nw;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Landroid/app/-$$Lambda$WallpaperManager$Globals$1AcnQUORvPlCjJoNqdxfQT4o4Nw;->f$0:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/-$$Lambda$WallpaperManager$Globals$1AcnQUORvPlCjJoNqdxfQT4o4Nw;->f$1:Landroid/util/Pair;

    iget-object v2, p0, Landroid/app/-$$Lambda$WallpaperManager$Globals$1AcnQUORvPlCjJoNqdxfQT4o4Nw;->f$2:Landroid/app/WallpaperColors;

    iget v3, p0, Landroid/app/-$$Lambda$WallpaperManager$Globals$1AcnQUORvPlCjJoNqdxfQT4o4Nw;->f$3:I

    iget v4, p0, Landroid/app/-$$Lambda$WallpaperManager$Globals$1AcnQUORvPlCjJoNqdxfQT4o4Nw;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->lambda$onWallpaperColorsChanged$1$WallpaperManager$Globals(Landroid/util/Pair;Landroid/app/WallpaperColors;II)V

    return-void
.end method
