.class public interface abstract Landroid/app/WallpaperManager$OnColorsChangedListener;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnColorsChangedListener"
.end annotation


# virtual methods
.method public abstract onColorsChanged(Landroid/app/WallpaperColors;I)V
.end method

.method public onColorsChanged(Landroid/app/WallpaperColors;II)V
    .registers 4

    invoke-interface {p0, p1, p2}, Landroid/app/WallpaperManager$OnColorsChangedListener;->onColorsChanged(Landroid/app/WallpaperColors;I)V

    return-void
.end method
