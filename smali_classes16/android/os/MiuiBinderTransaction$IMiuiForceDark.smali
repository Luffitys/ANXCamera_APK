.class public final Landroid/os/MiuiBinderTransaction$IMiuiForceDark;
.super Ljava/lang/Object;
.source "MiuiBinderTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MiuiBinderTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IMiuiForceDark"
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.IMiuiForceDark"

.field public static final ON_APP_DARK_MODE_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/os/MiuiBinderTransaction;


# direct methods
.method public constructor <init>(Landroid/os/MiuiBinderTransaction;)V
    .registers 2

    iput-object p1, p0, Landroid/os/MiuiBinderTransaction$IMiuiForceDark;->this$0:Landroid/os/MiuiBinderTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
