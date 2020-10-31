.class Lcom/miui/translationservice/provider/TranslationResult$Phrase$1;
.super Ljava/lang/Object;
.source "TranslationResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/translationservice/provider/TranslationResult$Phrase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/translationservice/provider/TranslationResult$Phrase;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/translationservice/provider/TranslationResult$Phrase;
    .registers 4

    new-instance v0, Lcom/miui/translationservice/provider/TranslationResult$Phrase;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miui/translationservice/provider/TranslationResult$Phrase;-><init>(Landroid/os/Parcel;Lcom/miui/translationservice/provider/TranslationResult$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/miui/translationservice/provider/TranslationResult$Phrase$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/translationservice/provider/TranslationResult$Phrase;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/miui/translationservice/provider/TranslationResult$Phrase;
    .registers 3

    new-array v0, p1, [Lcom/miui/translationservice/provider/TranslationResult$Phrase;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/miui/translationservice/provider/TranslationResult$Phrase$1;->newArray(I)[Lcom/miui/translationservice/provider/TranslationResult$Phrase;

    move-result-object p1

    return-object p1
.end method
