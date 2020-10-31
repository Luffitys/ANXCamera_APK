.class public final synthetic Landroid/inputmethodservice/-$$Lambda$InputMethodService$TZAfta6HEKUpxapSrZpy7Hhlwrw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public synthetic constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/-$$Lambda$InputMethodService$TZAfta6HEKUpxapSrZpy7Hhlwrw;->f$0:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/-$$Lambda$InputMethodService$TZAfta6HEKUpxapSrZpy7Hhlwrw;->f$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->lambda$TZAfta6HEKUpxapSrZpy7Hhlwrw(Landroid/inputmethodservice/InputMethodService;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
