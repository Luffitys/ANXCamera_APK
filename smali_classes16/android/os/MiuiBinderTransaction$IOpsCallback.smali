.class public final Landroid/os/MiuiBinderTransaction$IOpsCallback;
.super Ljava/lang/Object;
.source "MiuiBinderTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MiuiBinderTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IOpsCallback"
.end annotation


# static fields
.field public static final APP_PERM_FLAGS_MODIFIED:I = 0x6

.field public static final ASK_OPERATION:I = 0x1

.field public static final GET_DEFAULT_OP:I = 0x2

.field public static final IS_APP_PERMISSION_CONTROL_OPEN:I = 0x3

.field public static final ON_APP_APPLY_OPERATION:I = 0x4

.field public static final UPDATE_PROCESSSTATE:I = 0x5


# instance fields
.field final synthetic this$0:Landroid/os/MiuiBinderTransaction;


# direct methods
.method public constructor <init>(Landroid/os/MiuiBinderTransaction;)V
    .registers 2

    iput-object p1, p0, Landroid/os/MiuiBinderTransaction$IOpsCallback;->this$0:Landroid/os/MiuiBinderTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
