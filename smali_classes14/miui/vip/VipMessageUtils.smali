.class public Lmiui/vip/VipMessageUtils;
.super Ljava/lang/Object;
.source "VipMessageUtils.java"


# static fields
.field static final KEY_VALUE:Ljava/lang/String; = "value"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrMsg(ILjava/lang/Object;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_11

    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_11

    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRequestId(Landroid/os/Message;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_f

    const-string v2, "VIP_REQUEST_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_f
    return-object v1
.end method

.method public static getValueFrom(Landroid/os/Message;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Message;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public static makeErrData(ILjava/lang/Object;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_10

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setData(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    :cond_f
    instance-of v1, p1, Ljava/lang/String;

    const-string v2, "value"

    if-eqz v1, :cond_1c

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a

    :cond_1c
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_27

    move-object v1, p1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_7a

    :cond_27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_52

    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    array-length v4, v1

    if-lez v4, :cond_79

    aget-object v4, v1, v3

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_45

    move-object v3, p1

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_79

    :cond_45
    aget-object v3, v1, v3

    instance-of v3, v3, Landroid/os/Parcelable;

    if-eqz v3, :cond_79

    move-object v3, p1

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_79

    :cond_52
    instance-of v1, p1, Ljava/util/ArrayList;

    if-eqz v1, :cond_79

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_6e

    move-object v4, p1

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_7a

    :cond_6e
    instance-of v4, v3, Landroid/os/Parcelable;

    if-eqz v4, :cond_7a

    move-object v4, p1

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_7a

    :cond_79
    :goto_79
    nop

    :cond_7a
    :goto_7a
    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    return-void
.end method

.method public static setRequestId(Landroid/os/Message;Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_15

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_15
    const-string v1, "VIP_REQUEST_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method
