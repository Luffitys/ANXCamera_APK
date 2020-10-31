.class public final synthetic Landroid/telecom/-$$Lambda$Connection$lnfFNF0t9fPLEf01JE291g4chSk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/telecom/Connection;


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/Connection;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/-$$Lambda$Connection$lnfFNF0t9fPLEf01JE291g4chSk;->f$0:Landroid/telecom/Connection;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/telecom/-$$Lambda$Connection$lnfFNF0t9fPLEf01JE291g4chSk;->f$0:Landroid/telecom/Connection;

    check-cast p1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, p1}, Landroid/telecom/Connection;->lambda$sendRemoteRttRequest$3$Connection(Landroid/telecom/Connection$Listener;)V

    return-void
.end method
