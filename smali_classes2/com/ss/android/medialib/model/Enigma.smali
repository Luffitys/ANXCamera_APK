.class public Lcom/ss/android/medialib/model/Enigma;
.super Ljava/lang/Object;
.source "Enigma.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/model/Enigma$CodeType;
    }
.end annotation


# instance fields
.field points:[Lcom/ss/android/medialib/model/TdPoint;

.field text:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPoints()[Lcom/ss/android/medialib/model/TdPoint;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/medialib/model/Enigma;->points:[Lcom/ss/android/medialib/model/TdPoint;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/medialib/model/Enigma;->text:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/ss/android/medialib/model/Enigma;->type:I

    return p0
.end method

.method public setPoints([Lcom/ss/android/medialib/model/TdPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/model/Enigma;->points:[Lcom/ss/android/medialib/model/TdPoint;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/model/Enigma;->text:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/model/Enigma;->type:I

    return-void
.end method
