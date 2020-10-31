.class Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;
.super Ljava/lang/Object;
.source "MiuiResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/MiuiResourcesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloadDrawableSource"
.end annotation


# instance fields
.field mCookie:I

.field mResourcePath:Ljava/lang/String;

.field mThemePath:Ljava/lang/String;

.field final synthetic this$0:Landroid/content/res/MiuiResourcesImpl;


# direct methods
.method constructor <init>(Landroid/content/res/MiuiResourcesImpl;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->this$0:Landroid/content/res/MiuiResourcesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->mCookie:I

    iput-object p3, p0, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->mResourcePath:Ljava/lang/String;

    iput-object p4, p0, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->mThemePath:Ljava/lang/String;

    return-void
.end method
