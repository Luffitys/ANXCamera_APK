.class public final Landroid/os/MiuiBinderTransaction$IInputMethodManager;
.super Ljava/lang/Object;
.source "MiuiBinderTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MiuiBinderTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IInputMethodManager"
.end annotation


# static fields
.field public static final CODE_INPUT_TEXT:I = 0xfffffe

.field public static final CODE_REGISTER_MONITER:I = 0xfffffd

.field public static final CODE_SYNERGY_OPERATE:I = 0xfffffb

.field public static final CODE_UNREGISTER_MONITER:I = 0xfffffc

.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodManager"


# instance fields
.field final synthetic this$0:Landroid/os/MiuiBinderTransaction;


# direct methods
.method public constructor <init>(Landroid/os/MiuiBinderTransaction;)V
    .registers 2

    iput-object p1, p0, Landroid/os/MiuiBinderTransaction$IInputMethodManager;->this$0:Landroid/os/MiuiBinderTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
