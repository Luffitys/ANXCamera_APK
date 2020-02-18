.class public Lcom/ss/android/medialib/model/FaceAttributeInfo;
.super Ljava/lang/Object;
.source "FaceAttributeInfo.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field info:[Lcom/ss/android/medialib/model/FaceAttribute;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()[Lcom/ss/android/medialib/model/FaceAttribute;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/medialib/model/FaceAttributeInfo;->info:[Lcom/ss/android/medialib/model/FaceAttribute;

    return-object p0
.end method

.method public setInfo([Lcom/ss/android/medialib/model/FaceAttribute;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/model/FaceAttributeInfo;->info:[Lcom/ss/android/medialib/model/FaceAttribute;

    return-void
.end method
