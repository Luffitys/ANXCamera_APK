.class Landroid/service/autofill/TextValueSanitizer$1;
.super Ljava/lang/Object;
.source "TextValueSanitizer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/TextValueSanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/TextValueSanitizer;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/TextValueSanitizer;
    .registers 5

    new-instance v0, Landroid/service/autofill/TextValueSanitizer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/autofill/TextValueSanitizer;-><init>(Ljava/util/regex/Pattern;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/autofill/TextValueSanitizer$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/TextValueSanitizer;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/autofill/TextValueSanitizer;
    .registers 3

    new-array v0, p1, [Landroid/service/autofill/TextValueSanitizer;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/autofill/TextValueSanitizer$1;->newArray(I)[Landroid/service/autofill/TextValueSanitizer;

    move-result-object p1

    return-object p1
.end method
