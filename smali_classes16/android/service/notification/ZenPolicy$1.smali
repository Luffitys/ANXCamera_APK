.class Landroid/service/notification/ZenPolicy$1;
.super Ljava/lang/Object;
.source "ZenPolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/notification/ZenPolicy;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/ZenPolicy;
    .registers 4

    new-instance v0, Landroid/service/notification/ZenPolicy;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy;-><init>()V

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->access$002(Landroid/service/notification/ZenPolicy;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->access$402(Landroid/service/notification/ZenPolicy;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/service/notification/ZenPolicy;->mPriorityCalls:I
    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->access$202(Landroid/service/notification/ZenPolicy;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/service/notification/ZenPolicy;->mPriorityMessages:I
    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->access$102(Landroid/service/notification/ZenPolicy;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/service/notification/ZenPolicy;->mConversationSenders:I
    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->access$302(Landroid/service/notification/ZenPolicy;I)I

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/notification/ZenPolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/ZenPolicy;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/notification/ZenPolicy;
    .registers 3

    new-array v0, p1, [Landroid/service/notification/ZenPolicy;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/notification/ZenPolicy$1;->newArray(I)[Landroid/service/notification/ZenPolicy;

    move-result-object p1

    return-object p1
.end method
