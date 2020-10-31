.class public final synthetic Landroid/app/-$$Lambda$WallpaperColors$8R5kfKKLfHjpw_QXmD1mWOKwJxc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/-$$Lambda$WallpaperColors$8R5kfKKLfHjpw_QXmD1mWOKwJxc;->f$0:F

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Landroid/app/-$$Lambda$WallpaperColors$8R5kfKKLfHjpw_QXmD1mWOKwJxc;->f$0:F

    check-cast p1, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-static {v0, p1}, Landroid/app/WallpaperColors;->lambda$fromBitmap$0(FLcom/android/internal/graphics/palette/Palette$Swatch;)Z

    move-result p1

    return p1
.end method
