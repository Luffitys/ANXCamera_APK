.class Lcom/ss/android/vesdk/runtime/VERuntime$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ss/android/ttve/monitor/IMonitor;


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/runtime/VERuntime;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/runtime/VERuntime;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime$1;->this$0:Lcom/ss/android/vesdk/runtime/VERuntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public monitorLog(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime$1;->this$0:Lcom/ss/android/vesdk/runtime/VERuntime;

    invoke-static {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->access$000(Lcom/ss/android/vesdk/runtime/VERuntime;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime$1;->this$0:Lcom/ss/android/vesdk/runtime/VERuntime;

    invoke-static {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->access$000(Lcom/ss/android/vesdk/runtime/VERuntime;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime$1;->this$0:Lcom/ss/android/vesdk/runtime/VERuntime;

    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->access$000(Lcom/ss/android/vesdk/runtime/VERuntime;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEListener$VEMonitorListener;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VEListener$VEMonitorListener;->monitorLog(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method
