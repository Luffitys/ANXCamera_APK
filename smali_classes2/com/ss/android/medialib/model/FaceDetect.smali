.class public Lcom/ss/android/medialib/model/FaceDetect;
.super Ljava/lang/Object;
.source "FaceDetect.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private points:[Landroid/graphics/PointF;

.field private rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPoints()[Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/medialib/model/FaceDetect;->points:[Landroid/graphics/PointF;

    return-object p0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/medialib/model/FaceDetect;->rect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public setPoints([Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/model/FaceDetect;->points:[Landroid/graphics/PointF;

    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/model/FaceDetect;->rect:Landroid/graphics/Rect;

    return-void
.end method
