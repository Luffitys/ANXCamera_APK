.class Lmiui/app/DatePickerDialog$2;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/DatePickerDialog;-><init>(Landroid/content/Context;ILmiui/app/DatePickerDialog$OnDateSetListener;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/DatePickerDialog;


# direct methods
.method constructor <init>(Lmiui/app/DatePickerDialog;)V
    .registers 2

    iput-object p1, p0, Lmiui/app/DatePickerDialog$2;->this$0:Lmiui/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lmiui/app/DatePickerDialog$2;->this$0:Lmiui/app/DatePickerDialog;

    # invokes: Lmiui/app/DatePickerDialog;->tryNotifyDateSet()V
    invoke-static {v0}, Lmiui/app/DatePickerDialog;->access$200(Lmiui/app/DatePickerDialog;)V

    return-void
.end method
