.class Lmiui/graphics/BitmapFactory$1;
.super Landroid/content/ContextWrapper;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/graphics/BitmapFactory;->fastblur_v17(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 1

    return-object p0
.end method
