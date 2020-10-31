.class public Landroid/drm/DrmInfoEvent;
.super Landroid/drm/DrmEvent;
.source "DrmInfoEvent.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final TYPE_ACCOUNT_ALREADY_REGISTERED:I = 0x5

.field public static final TYPE_ALREADY_REGISTERED_BY_ANOTHER_ACCOUNT:I = 0x1

.field public static final TYPE_REMOVE_RIGHTS:I = 0x2

.field public static final TYPE_RIGHTS_INSTALLED:I = 0x3

.field public static final TYPE_RIGHTS_REMOVED:I = 0x6

.field public static final TYPE_WAIT_FOR_RIGHTS:I = 0x4


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;)V

    invoke-direct {p0, p2}, Landroid/drm/DrmInfoEvent;->checkTypeValidity(I)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    invoke-direct {p0, p2}, Landroid/drm/DrmInfoEvent;->checkTypeValidity(I)V

    return-void
.end method

.method private checkTypeValidity(I)V
    .registers 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    const/4 v0, 0x6

    if-le p1, v0, :cond_26

    :cond_6
    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_26

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_f

    goto :goto_26

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_26
    :goto_26
    return-void
.end method
