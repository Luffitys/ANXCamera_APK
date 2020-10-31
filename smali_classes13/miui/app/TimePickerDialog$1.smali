.class Lmiui/app/TimePickerDialog$1;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/TimePickerDialog;-><init>(Landroid/content/Context;ILmiui/app/TimePickerDialog$OnTimeSetListener;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/TimePickerDialog;


# direct methods
.method constructor <init>(Lmiui/app/TimePickerDialog;)V
    .registers 2

    iput-object p1, p0, Lmiui/app/TimePickerDialog$1;->this$0:Lmiui/app/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lmiui/app/TimePickerDialog$1;->this$0:Lmiui/app/TimePickerDialog;

    # invokes: Lmiui/app/TimePickerDialog;->tryNotifyTimeSet()V
    invoke-static {v0}, Lmiui/app/TimePickerDialog;->access$000(Lmiui/app/TimePickerDialog;)V

    return-void
.end method
