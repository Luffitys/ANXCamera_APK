.class Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$1;
.super Ljava/lang/Object;
.source "Internal_Policy_Impl_PhoneWindow_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Internal_Policy_Impl_PhoneWindow$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$1;->this$0:Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public installDecor(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class$1;->this$0:Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->handleInstallDecor(JLjava/lang/Object;)V

    return-void
.end method
