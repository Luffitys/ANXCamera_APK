.class Landroid/location/Address$1;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/Address;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/Address;
    .registers 12

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_14

    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_14
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :goto_19
    nop

    new-instance v3, Landroid/location/Address;

    invoke-direct {v3, v2}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-lez v4, :cond_53

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v4}, Ljava/util/HashMap;-><init>(I)V

    # setter for: Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;
    invoke-static {v3, v5}, Landroid/location/Address;->access$002(Landroid/location/Address;Ljava/util/HashMap;)Ljava/util/HashMap;

    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v4, :cond_52

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    # getter for: Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/location/Address;->access$000(Landroid/location/Address;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    # getter for: Landroid/location/Address;->mMaxAddressLineIndex:I
    invoke-static {v3}, Landroid/location/Address;->access$100(Landroid/location/Address;)I

    move-result v8

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    # setter for: Landroid/location/Address;->mMaxAddressLineIndex:I
    invoke-static {v3, v8}, Landroid/location/Address;->access$102(Landroid/location/Address;I)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_52
    goto :goto_5b

    :cond_53
    const/4 v5, 0x0

    # setter for: Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;
    invoke-static {v3, v5}, Landroid/location/Address;->access$002(Landroid/location/Address;Ljava/util/HashMap;)Ljava/util/HashMap;

    const/4 v5, -0x1

    # setter for: Landroid/location/Address;->mMaxAddressLineIndex:I
    invoke-static {v3, v5}, Landroid/location/Address;->access$102(Landroid/location/Address;I)I

    :goto_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    # setter for: Landroid/location/Address;->mFeatureName:Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/location/Address;->access$202(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    # setter for: Landroid/location/Address;->mAdminArea:Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/location/Address;->access$302(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    # setter for: Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/location/Address;->access$402(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    # setter for: Landroid/location/Address;->mLocality:Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/location/Address;->access$502(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    # setter for: Landroid/location/Address;->mSubLocality:Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/location/Address;->access$602(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    # setter for: Landroid/location/Address;->mThoroughfare:Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/location/Address;->access$702(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    # setter for: Landroid/location/Address;->mSubThoroughfare:Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/location/Address;->access$802(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    # setter for: Landroid/location/Address;->mPremises:Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/location/Address;->access$902(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    # setter for: Landroid/location/Address;->mPostalCode:Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/location/Address;->access$1002(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    # setter for: Landroid/location/Address;->mCountryCode:Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/location/Address;->access$1102(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    # setter for: Landroid/location/Address;->mCountryName:Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/location/Address;->access$1202(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_b2

    move v5, v6

    goto :goto_b3

    :cond_b2
    move v5, v7

    :goto_b3
    # setter for: Landroid/location/Address;->mHasLatitude:Z
    invoke-static {v3, v5}, Landroid/location/Address;->access$1302(Landroid/location/Address;Z)Z

    # getter for: Landroid/location/Address;->mHasLatitude:Z
    invoke-static {v3}, Landroid/location/Address;->access$1300(Landroid/location/Address;)Z

    move-result v5

    if-eqz v5, :cond_c3

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    # setter for: Landroid/location/Address;->mLatitude:D
    invoke-static {v3, v8, v9}, Landroid/location/Address;->access$1402(Landroid/location/Address;D)D

    :cond_c3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_ca

    goto :goto_cb

    :cond_ca
    move v6, v7

    :goto_cb
    # setter for: Landroid/location/Address;->mHasLongitude:Z
    invoke-static {v3, v6}, Landroid/location/Address;->access$1502(Landroid/location/Address;Z)Z

    # getter for: Landroid/location/Address;->mHasLongitude:Z
    invoke-static {v3}, Landroid/location/Address;->access$1500(Landroid/location/Address;)Z

    move-result v5

    if-eqz v5, :cond_db

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    # setter for: Landroid/location/Address;->mLongitude:D
    invoke-static {v3, v5, v6}, Landroid/location/Address;->access$1602(Landroid/location/Address;D)D

    :cond_db
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    # setter for: Landroid/location/Address;->mPhone:Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/location/Address;->access$1702(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    # setter for: Landroid/location/Address;->mUrl:Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/location/Address;->access$1802(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    # setter for: Landroid/location/Address;->mExtras:Landroid/os/Bundle;
    invoke-static {v3, v5}, Landroid/location/Address;->access$1902(Landroid/location/Address;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/Address$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Address;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/Address;
    .registers 3

    new-array v0, p1, [Landroid/location/Address;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/Address$1;->newArray(I)[Landroid/location/Address;

    move-result-object p1

    return-object p1
.end method
