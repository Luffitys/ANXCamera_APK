.class public final Landroid/app/AuthenticationRequiredException;
.super Ljava/lang/SecurityException;
.source "AuthenticationRequiredException.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AuthenticationRequiredException;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AuthenticationRequiredException"


# instance fields
.field private final mUserAction:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/AuthenticationRequiredException$1;

    invoke-direct {v0}, Landroid/app/AuthenticationRequiredException$1;-><init>()V

    sput-object v0, Landroid/app/AuthenticationRequiredException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    new-instance v0, Ljava/lang/SecurityException;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-direct {p0, v0, v1}, Landroid/app/AuthenticationRequiredException;-><init>(Ljava/lang/Throwable;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Landroid/app/PendingIntent;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/AuthenticationRequiredException;->mUserAction:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getUserAction()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Landroid/app/AuthenticationRequiredException;->mUserAction:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/AuthenticationRequiredException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/AuthenticationRequiredException;->mUserAction:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
