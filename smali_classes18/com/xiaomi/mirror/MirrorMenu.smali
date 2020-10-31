.class public Lcom/xiaomi/mirror/MirrorMenu;
.super Ljava/lang/Object;
.source "MirrorMenu.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/MirrorMenu$PcOpenBuilder;,
        Lcom/xiaomi/mirror/MirrorMenu$NewDisplayOpenBuilder;,
        Lcom/xiaomi/mirror/MirrorMenu$Builder;,
        Lcom/xiaomi/mirror/MirrorMenu$Callback;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/mirror/MirrorMenu;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_COMMON:I = 0x0

.field public static final TYPE_NEW_DISPLAY_OPEN:I = 0x1

.field public static final TYPE_PC_OPEN:I = 0x2


# instance fields
.field private callback:Lcom/xiaomi/mirror/MirrorMenu$Callback;

.field private extra:Ljava/lang/String;

.field private label:Ljava/lang/CharSequence;

.field private pi:Landroid/app/PendingIntent;

.field private type:I

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/xiaomi/mirror/MirrorMenu$1;

    invoke-direct {v0}, Lcom/xiaomi/mirror/MirrorMenu$1;-><init>()V

    sput-object v0, Lcom/xiaomi/mirror/MirrorMenu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/mirror/MirrorMenu;->type:I

    iput-object p2, p0, Lcom/xiaomi/mirror/MirrorMenu;->label:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/xiaomi/mirror/MirrorMenu;->pi:Landroid/app/PendingIntent;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Lcom/xiaomi/mirror/MirrorMenu$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/mirror/MirrorMenu;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/mirror/MirrorMenu;->type:I

    iput-object p2, p0, Lcom/xiaomi/mirror/MirrorMenu;->label:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/xiaomi/mirror/MirrorMenu;->uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/xiaomi/mirror/MirrorMenu;->extra:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/CharSequence;Landroid/net/Uri;Ljava/lang/String;Lcom/xiaomi/mirror/MirrorMenu$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mirror/MirrorMenu;-><init>(ILjava/lang/CharSequence;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Lcom/xiaomi/mirror/MirrorMenu$Callback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/mirror/MirrorMenu;->type:I

    iput-object p2, p0, Lcom/xiaomi/mirror/MirrorMenu;->label:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/xiaomi/mirror/MirrorMenu;->callback:Lcom/xiaomi/mirror/MirrorMenu$Callback;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/CharSequence;Lcom/xiaomi/mirror/MirrorMenu$Callback;Lcom/xiaomi/mirror/MirrorMenu$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/mirror/MirrorMenu;-><init>(ILjava/lang/CharSequence;Lcom/xiaomi/mirror/MirrorMenu$Callback;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->label:Ljava/lang/CharSequence;

    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->pi:Landroid/app/PendingIntent;

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->extra:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getListener()Lcom/xiaomi/mirror/MirrorMenu$Callback;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->callback:Lcom/xiaomi/mirror/MirrorMenu$Callback;

    return-object v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->pi:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->type:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public needCallRemote()Z
    .registers 4

    iget v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MirrorMenu{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/mirror/MirrorMenu;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", label=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorMenu;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorMenu;->callback:Lcom/xiaomi/mirror/MirrorMenu$Callback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorMenu;->pi:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorMenu;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorMenu;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->label:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->pi:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu;->extra:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    return-void
.end method
