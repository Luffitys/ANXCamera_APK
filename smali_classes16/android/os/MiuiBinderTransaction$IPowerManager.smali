.class public final Landroid/os/MiuiBinderTransaction$IPowerManager;
.super Ljava/lang/Object;
.source "MiuiBinderTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MiuiBinderTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IPowerManager"
.end annotation


# static fields
.field public static final CODE_REQUEST_DIMMING_RIGHT_NOW:I = 0xfffffe

.field public static final CODE_REQUEST_SCREEN_PROJECTION:I = 0xfffffd

.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPowerManager"


# instance fields
.field final synthetic this$0:Landroid/os/MiuiBinderTransaction;


# direct methods
.method public constructor <init>(Landroid/os/MiuiBinderTransaction;)V
    .registers 2

    iput-object p1, p0, Landroid/os/MiuiBinderTransaction$IPowerManager;->this$0:Landroid/os/MiuiBinderTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
