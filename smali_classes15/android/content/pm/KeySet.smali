.class public Landroid/content/pm/KeySet;
.super Ljava/lang/Object;
.source "KeySet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/KeySet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private token:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/KeySet$1;

    invoke-direct {v0}, Landroid/content/pm/KeySet$1;-><init>()V

    sput-object v0, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    return-void

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null value for KeySet IBinder token"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/content/pm/KeySet;
    .registers 2

    invoke-static {p0}, Landroid/content/pm/KeySet;->readFromParcel(Landroid/os/Parcel;)Landroid/content/pm/KeySet;

    move-result-object v0

    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Landroid/content/pm/KeySet;
    .registers 3

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/content/pm/KeySet;

    invoke-direct {v1, v0}, Landroid/content/pm/KeySet;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/content/pm/KeySet;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    move-object v0, p1

    check-cast v0, Landroid/content/pm/KeySet;

    iget-object v2, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    iget-object v3, v0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    if-ne v2, v3, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    :cond_10
    return v1
.end method

.method public getToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
