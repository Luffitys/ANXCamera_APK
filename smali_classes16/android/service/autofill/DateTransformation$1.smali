.class Landroid/service/autofill/DateTransformation$1;
.super Ljava/lang/Object;
.source "DateTransformation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/DateTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/DateTransformation;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/DateTransformation;
    .registers 5

    new-instance v0, Landroid/service/autofill/DateTransformation;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Landroid/icu/text/DateFormat;

    invoke-direct {v0, v1, v2}, Landroid/service/autofill/DateTransformation;-><init>(Landroid/view/autofill/AutofillId;Landroid/icu/text/DateFormat;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/autofill/DateTransformation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/DateTransformation;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/autofill/DateTransformation;
    .registers 3

    new-array v0, p1, [Landroid/service/autofill/DateTransformation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/autofill/DateTransformation$1;->newArray(I)[Landroid/service/autofill/DateTransformation;

    move-result-object p1

    return-object p1
.end method
