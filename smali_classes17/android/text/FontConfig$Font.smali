.class public final Landroid/text/FontConfig$Font;
.super Ljava/lang/Object;
.source "FontConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Font"
.end annotation


# instance fields
.field private final mAxes:[Landroid/graphics/fonts/FontVariationAxis;

.field private final mFallbackFor:Ljava/lang/String;

.field private final mFontName:Ljava/lang/String;

.field private final mIsItalic:Z

.field private final mTtcIndex:I

.field private mUri:Landroid/net/Uri;

.field private final mWeight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IZLjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/FontConfig$Font;->mFontName:Ljava/lang/String;

    iput p2, p0, Landroid/text/FontConfig$Font;->mTtcIndex:I

    iput-object p3, p0, Landroid/text/FontConfig$Font;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    iput p4, p0, Landroid/text/FontConfig$Font;->mWeight:I

    iput-boolean p5, p0, Landroid/text/FontConfig$Font;->mIsItalic:Z

    iput-object p6, p0, Landroid/text/FontConfig$Font;->mFallbackFor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAxes()[Landroid/graphics/fonts/FontVariationAxis;
    .registers 2

    iget-object v0, p0, Landroid/text/FontConfig$Font;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    return-object v0
.end method

.method public getFallbackFor()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/text/FontConfig$Font;->mFallbackFor:Ljava/lang/String;

    return-object v0
.end method

.method public getFontName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/text/FontConfig$Font;->mFontName:Ljava/lang/String;

    return-object v0
.end method

.method public getTtcIndex()I
    .registers 2

    iget v0, p0, Landroid/text/FontConfig$Font;->mTtcIndex:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/text/FontConfig$Font;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWeight()I
    .registers 2

    iget v0, p0, Landroid/text/FontConfig$Font;->mWeight:I

    return v0
.end method

.method public isItalic()Z
    .registers 2

    iget-boolean v0, p0, Landroid/text/FontConfig$Font;->mIsItalic:Z

    return v0
.end method

.method public setUri(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Landroid/text/FontConfig$Font;->mUri:Landroid/net/Uri;

    return-void
.end method
