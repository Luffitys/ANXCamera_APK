.class public Landroid/content/res/MiuiResources$ThemeFileInfoOption;
.super Ljava/lang/Object;
.source "MiuiResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/MiuiResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeFileInfoOption"
.end annotation


# instance fields
.field public inCookie:I

.field public inDensity:I

.field public inRequestStream:Z

.field public inResourcePath:Ljava/lang/String;

.field public outDensity:I

.field public outFilterPath:Ljava/lang/String;

.field public outInputStream:Ljava/io/InputStream;

.field public outSize:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    iput-object p2, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inRequestStream:Z

    return-void
.end method

.method public constructor <init>(Landroid/util/TypedValue;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/util/TypedValue;->assetCookie:I

    iput v0, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    iget v0, p1, Landroid/util/TypedValue;->density:I

    iput v0, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    iget-object v0, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    iput-boolean p2, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inRequestStream:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inRequestStream:Z

    return-void
.end method
