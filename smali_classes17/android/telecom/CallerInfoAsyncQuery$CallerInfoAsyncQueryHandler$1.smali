.class Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

.field final synthetic val$cw:Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;I)V
    .registers 4

    iput-object p1, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->this$1:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    iput-object p2, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->val$cw:Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    iput p3, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->val$token:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->val$cw:Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    iget-object v0, v0, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->listener:Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iget v1, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->val$token:I

    iget-object v2, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->val$cw:Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    iget-object v2, v2, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    iget-object v3, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->this$1:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    # getter for: Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Landroid/telecom/CallerInfo;
    invoke-static {v3}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$400(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/telecom/CallerInfo;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Landroid/telecom/CallerInfo;)V

    return-void
.end method
