.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$3;
.super Landroid/os/Handler;
.source "KeyguardCarrierLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 225
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 230
    :goto_0
    return-void

    .line 227
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->handleTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;I)V

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
