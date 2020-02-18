.class public Lcom/ss/android/medialib/model/FaceDetectInfo;
.super Ljava/lang/Object;
.source "FaceDetectInfo.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field info:[Lcom/ss/android/medialib/model/FaceDetect;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()[Lcom/ss/android/medialib/model/FaceDetect;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/medialib/model/FaceDetectInfo;->info:[Lcom/ss/android/medialib/model/FaceDetect;

    return-object p0
.end method

.method public setInfo([Lcom/ss/android/medialib/model/FaceDetect;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/model/FaceDetectInfo;->info:[Lcom/ss/android/medialib/model/FaceDetect;

    return-void
.end method
