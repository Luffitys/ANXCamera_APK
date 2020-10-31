.class public final Landroid/os/MiuiBinderTransaction$IUiModeManager;
.super Ljava/lang/Object;
.source "MiuiBinderTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MiuiBinderTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IUiModeManager"
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.IUiModeManager"

.field public static final REGIST_APP_DARK_MODE_OBSERVER:I = 0xfffffd

.field public static final SET_APP_DARK_MODE_ENABLE:I = 0xfffffe


# instance fields
.field final synthetic this$0:Landroid/os/MiuiBinderTransaction;


# direct methods
.method public constructor <init>(Landroid/os/MiuiBinderTransaction;)V
    .registers 2

    iput-object p1, p0, Landroid/os/MiuiBinderTransaction$IUiModeManager;->this$0:Landroid/os/MiuiBinderTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
