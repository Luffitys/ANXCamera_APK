.class Landroid/telecom/PhoneAccountSuggestionService$1;
.super Lcom/android/internal/telecom/IPhoneAccountSuggestionService$Stub;
.source "PhoneAccountSuggestionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/PhoneAccountSuggestionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/PhoneAccountSuggestionService;


# direct methods
.method constructor <init>(Landroid/telecom/PhoneAccountSuggestionService;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/PhoneAccountSuggestionService$1;->this$0:Landroid/telecom/PhoneAccountSuggestionService;

    invoke-direct {p0}, Lcom/android/internal/telecom/IPhoneAccountSuggestionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountSuggestionRequest(Lcom/android/internal/telecom/IPhoneAccountSuggestionCallback;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/telecom/PhoneAccountSuggestionService$1;->this$0:Landroid/telecom/PhoneAccountSuggestionService;

    # getter for: Landroid/telecom/PhoneAccountSuggestionService;->mCallbackMap:Ljava/util/Map;
    invoke-static {v0}, Landroid/telecom/PhoneAccountSuggestionService;->access$000(Landroid/telecom/PhoneAccountSuggestionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telecom/PhoneAccountSuggestionService$1;->this$0:Landroid/telecom/PhoneAccountSuggestionService;

    invoke-virtual {v0, p2}, Landroid/telecom/PhoneAccountSuggestionService;->onAccountSuggestionRequest(Ljava/lang/String;)V

    return-void
.end method
