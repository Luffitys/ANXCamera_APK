.class public Lcom/ss/android/medialib/model/EnigmaResult;
.super Ljava/lang/Object;
.source "EnigmaResult.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field result:[Lcom/ss/android/medialib/model/Enigma;

.field public zoomFactor:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()[Lcom/ss/android/medialib/model/Enigma;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/medialib/model/EnigmaResult;->result:[Lcom/ss/android/medialib/model/Enigma;

    return-object p0
.end method

.method public setResult([Lcom/ss/android/medialib/model/Enigma;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/model/EnigmaResult;->result:[Lcom/ss/android/medialib/model/Enigma;

    return-void
.end method
