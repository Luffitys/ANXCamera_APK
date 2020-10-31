.class public abstract Landroid/app/admin/NetworkEvent;
.super Ljava/lang/Object;
.source "NetworkEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final PARCEL_TOKEN_CONNECT_EVENT:I = 0x2

.field static final PARCEL_TOKEN_DNS_EVENT:I = 0x1


# instance fields
.field mId:J

.field mPackageName:Ljava/lang/String;

.field mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/admin/NetworkEvent$1;

    invoke-direct {v0}, Landroid/app/admin/NetworkEvent$1;-><init>()V

    sput-object v0, Landroid/app/admin/NetworkEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/admin/NetworkEvent;->mPackageName:Ljava/lang/String;

    iput-wide p2, p0, Landroid/app/admin/NetworkEvent;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getId()J
    .registers 3

    iget-wide v0, p0, Landroid/app/admin/NetworkEvent;->mId:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/admin/NetworkEvent;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    iget-wide v0, p0, Landroid/app/admin/NetworkEvent;->mTimestamp:J

    return-wide v0
.end method

.method public setId(J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/admin/NetworkEvent;->mId:J

    return-void
.end method

.method public abstract writeToParcel(Landroid/os/Parcel;I)V
.end method
