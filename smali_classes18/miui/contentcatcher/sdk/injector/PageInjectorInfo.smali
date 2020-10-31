.class public Lmiui/contentcatcher/sdk/injector/PageInjectorInfo;
.super Ljava/lang/Object;
.source "PageInjectorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/contentcatcher/sdk/injector/PageInjectorInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/contentcatcher/sdk/injector/PageInjectorInfo$1;

    invoke-direct {v0}, Lmiui/contentcatcher/sdk/injector/PageInjectorInfo$1;-><init>()V

    sput-object v0, Lmiui/contentcatcher/sdk/injector/PageInjectorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/contentcatcher/sdk/injector/PageInjectorInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/contentcatcher/sdk/injector/PageInjectorInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    return-void
.end method
