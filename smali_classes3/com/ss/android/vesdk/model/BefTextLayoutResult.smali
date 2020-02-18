.class public Lcom/ss/android/vesdk/model/BefTextLayoutResult;
.super Ljava/lang/Object;
.source "BefTextLayoutResult.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field height:I

.field lineCount:I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->height:I

    return p0
.end method

.method public getLineCount()I
    .locals 0

    iget p0, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->lineCount:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->width:I

    return p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->height:I

    return-void
.end method

.method public setLineCount(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->lineCount:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/vesdk/model/BefTextLayoutResult;->width:I

    return-void
.end method
