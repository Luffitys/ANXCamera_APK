.class public Lmiui/util/OldmanUtil;
.super Ljava/lang/Object;
.source "OldmanUtil.java"


# static fields
.field public static final IS_ELDER_MODE:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "persist.sys.user_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    move v1, v2

    :cond_b
    sput-boolean v1, Lmiui/util/OldmanUtil;->IS_ELDER_MODE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
