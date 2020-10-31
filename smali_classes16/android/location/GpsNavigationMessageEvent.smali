.class public Landroid/location/GpsNavigationMessageEvent;
.super Ljava/lang/Object;
.source "GpsNavigationMessageEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsNavigationMessageEvent$Listener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GpsNavigationMessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static STATUS_GPS_LOCATION_DISABLED:I

.field public static STATUS_NOT_SUPPORTED:I

.field public static STATUS_READY:I


# instance fields
.field private final mNavigationMessage:Landroid/location/GpsNavigationMessage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Landroid/location/GpsNavigationMessageEvent;->STATUS_NOT_SUPPORTED:I

    const/4 v0, 0x1

    sput v0, Landroid/location/GpsNavigationMessageEvent;->STATUS_READY:I

    const/4 v0, 0x2

    sput v0, Landroid/location/GpsNavigationMessageEvent;->STATUS_GPS_LOCATION_DISABLED:I

    new-instance v0, Landroid/location/GpsNavigationMessageEvent$1;

    invoke-direct {v0}, Landroid/location/GpsNavigationMessageEvent$1;-><init>()V

    sput-object v0, Landroid/location/GpsNavigationMessageEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/location/GpsNavigationMessage;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Landroid/location/GpsNavigationMessageEvent;->mNavigationMessage:Landroid/location/GpsNavigationMessage;

    return-void

    :cond_8
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Parameter \'message\' must not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getNavigationMessage()Landroid/location/GpsNavigationMessage;
    .registers 2

    iget-object v0, p0, Landroid/location/GpsNavigationMessageEvent;->mNavigationMessage:Landroid/location/GpsNavigationMessage;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ GpsNavigationMessageEvent:\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/location/GpsNavigationMessageEvent;->mNavigationMessage:Landroid/location/GpsNavigationMessage;

    invoke-virtual {v1}, Landroid/location/GpsNavigationMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/location/GpsNavigationMessageEvent;->mNavigationMessage:Landroid/location/GpsNavigationMessage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
