.class Landroid/nfc/NfcAdapter$3$1;
.super Ljava/lang/Object;
.source "NfcAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nfc/NfcAdapter$3;->onTagRemoved()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/nfc/NfcAdapter$3;


# direct methods
.method constructor <init>(Landroid/nfc/NfcAdapter$3;)V
    .registers 2

    iput-object p1, p0, Landroid/nfc/NfcAdapter$3$1;->this$1:Landroid/nfc/NfcAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroid/nfc/NfcAdapter$3$1;->this$1:Landroid/nfc/NfcAdapter$3;

    iget-object v0, v0, Landroid/nfc/NfcAdapter$3;->val$tagRemovedListener:Landroid/nfc/NfcAdapter$OnTagRemovedListener;

    invoke-interface {v0}, Landroid/nfc/NfcAdapter$OnTagRemovedListener;->onTagRemoved()V

    return-void
.end method
